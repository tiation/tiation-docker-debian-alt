#!/bin/bash

# Tiation Docker Debian - Enterprise Socket Connection Script
# Version: 2.0.0
# Description: Connects Docker CLI to Debian VM Docker Engine via SSH socket forwarding

set -e

# Configuration
CONFIG_DIR="$HOME/.tdd"
LOG_DIR="$CONFIG_DIR/logs"
LOG_FILE="$LOG_DIR/tdd-connect.log"
CONFIG_FILE="$CONFIG_DIR/config.yaml"

# Default values
DEFAULT_SSH_KEY="$HOME/.ssh/debian_id_rsa"
DEFAULT_SSH_USER="debian"
DEFAULT_SSH_PORT_ARM64="22022"
DEFAULT_SSH_PORT_X86_64="20002"

# Create directories if they don't exist
mkdir -p "$CONFIG_DIR" "$LOG_DIR"

# Logging function
log() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

# Error handling
error_exit() {
    log "ERROR: $1" >&2
    exit 1
}

# Show usage
show_usage() {
    cat << EOF
Tiation Docker Debian - Enterprise Socket Connection

Usage: $0 [ARCHITECTURE] [OPTIONS]

ARCHITECTURE:
    arm64       Connect to ARM64 Debian VM
    x86_64      Connect to x86_64 Debian VM

OPTIONS:
    -h, --help  Show this help message
    -v, --verbose   Enable verbose logging
    -k, --key PATH  SSH key path (default: $DEFAULT_SSH_KEY)
    -u, --user USER SSH user (default: $DEFAULT_SSH_USER)
    -p, --port PORT SSH port (auto-detected by architecture)

EXAMPLES:
    $0 arm64                    # Connect to ARM64 VM
    $0 x86_64 -v                # Connect to x86_64 VM with verbose logging
    $0 arm64 -k ~/.ssh/custom   # Use custom SSH key

EOF
}

# Check if VM is reachable
check_vm_connectivity() {
    local arch=$1
    local port=$2
    local user=$3
    
    log "Checking connectivity to $arch VM..."
    
    if ! ssh -o ConnectTimeout=5 -o BatchMode=yes -p "$port" -i "$ssh_key" "$user@127.0.0.1" exit 2>/dev/null; then
        error_exit "Cannot connect to $arch VM. Please ensure VM is running and SSH is configured."
    fi
    
    log "VM connectivity check passed for $arch"
}

# Main connection function
connect_to_vm() {
    local arch=$1
    local ssh_key=$2
    local ssh_user=$3
    local ssh_port=$4
    
    local socket_path
    if [ "$arch" = "arm64" ]; then
        socket_path="/tmp/docker-on-debian.sock"
    else
        socket_path="/tmp/docker-on-debianx64.sock"
    fi
    
    # Check if socket already exists and is active
    if [ -S "$socket_path" ]; then
        log "Existing socket found at $socket_path"
        if docker --host "unix://$socket_path" info >/dev/null 2>&1; then
            log "Socket is already active and working"
            export DOCKER_HOST="unix://$socket_path"
            echo "export DOCKER_HOST=unix://$socket_path"
            return 0
        else
            log "Removing inactive socket"
            rm -f "$socket_path"
        fi
    fi
    
    # Check VM connectivity
    check_vm_connectivity "$arch" "$ssh_port" "$ssh_user"
    
    # Establish SSH connection with socket forwarding
    log "Establishing SSH connection to $arch VM (port: $ssh_port)"
    log "Socket forwarding: $socket_path -> VM:/var/run/docker.sock"
    
    ssh "$ssh_user@127.0.0.1" -p "$ssh_port" -i "$ssh_key" -N -f \
        -L"$socket_path:/var/run/docker.sock" \
        -o ServerAliveInterval=30 \
        -o ServerAliveCountMax=3 \
        -o ExitOnForwardFailure=yes
    
    # Wait for socket to be ready
    local attempts=0
    while [ $attempts -lt 30 ]; do
        if [ -S "$socket_path" ] && docker --host "unix://$socket_path" info >/dev/null 2>&1; then
            log "Successfully connected to $arch Docker Engine"
            export DOCKER_HOST="unix://$socket_path"
            echo "export DOCKER_HOST=unix://$socket_path"
            return 0
        fi
        attempts=$((attempts + 1))
        sleep 1
    done
    
    error_exit "Failed to establish working Docker connection after 30 seconds"
}

# Parse command line arguments
arch=""
verbose=false
ssh_key="$DEFAULT_SSH_KEY"
ssh_user="$DEFAULT_SSH_USER"
ssh_port=""

while [[ $# -gt 0 ]]; do
    case $1 in
        -h|--help)
            show_usage
            exit 0
            ;;
        -v|--verbose)
            verbose=true
            shift
            ;;
        -k|--key)
            ssh_key="$2"
            shift 2
            ;;
        -u|--user)
            ssh_user="$2"
            shift 2
            ;;
        -p|--port)
            ssh_port="$2"
            shift 2
            ;;
        arm64|x86_64)
            arch="$1"
            shift
            ;;
        *)
            echo "Unknown option: $1" >&2
            show_usage
            exit 1
            ;;
    esac
done

# Validate architecture
if [ -z "$arch" ]; then
    echo "Error: Architecture not specified" >&2
    show_usage
    exit 1
fi

if [ "$arch" != "arm64" ] && [ "$arch" != "x86_64" ]; then
    echo "Error: Invalid architecture '$arch'. Must be 'arm64' or 'x86_64'" >&2
    exit 1
fi

# Set default port if not specified
if [ -z "$ssh_port" ]; then
    if [ "$arch" = "arm64" ]; then
        ssh_port="$DEFAULT_SSH_PORT_ARM64"
    else
        ssh_port="$DEFAULT_SSH_PORT_X86_64"
    fi
fi

# Validate SSH key
if [ ! -f "$ssh_key" ]; then
    error_exit "SSH key not found: $ssh_key"
fi

# Start connection
log "Starting Tiation Docker Debian connection"
log "Architecture: $arch"
log "SSH User: $ssh_user"
log "SSH Port: $ssh_port"
log "SSH Key: $ssh_key"

connect_to_vm "$arch" "$ssh_key" "$ssh_user" "$ssh_port"

log "Connection established successfully"

