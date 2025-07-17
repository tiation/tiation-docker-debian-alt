# Architecture Guide

## Overview

Tiation Docker Debian employs a distributed architecture that separates the Docker Engine from the Docker CLI, providing enhanced security, flexibility, and performance. This document outlines the system architecture, components, and data flow.

## System Architecture

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                                HOST SYSTEM                                      │
├─────────────────────────────────────────────────────────────────────────────────┤
│  ┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐            │
│  │   Docker CLI    │    │  TDD Scripts    │    │  SSH Client     │            │
│  │                 │    │                 │    │                 │            │
│  │ • docker build  │    │ • tdd-connect   │    │ • Socket fwd    │            │
│  │ • docker run    │────│ • tdd-tunnel    │────│ • Port fwd      │            │
│  │ • docker ps     │    │ • tdd-use       │    │ • Key mgmt      │            │
│  └─────────────────┘    └─────────────────┘    └─────────────────┘            │
│                                   │                        │                   │
│                                   │                        │                   │
├───────────────────────────────────┼────────────────────────┼───────────────────┤
│                                   │                        │                   │
│                            ┌──────▼────────┐       ┌──────▼────────┐          │
│                            │ Docker Socket │       │  SSH Tunnel   │          │
│                            │ Forwarding    │       │  (Ports)      │          │
│                            │               │       │               │          │
│                            │ unix:///tmp/  │       │ 3000 → 3000   │          │
│                            │ docker.sock   │       │ 8080 → 8080   │          │
│                            └──────┬────────┘       └──────┬────────┘          │
└───────────────────────────────────┼────────────────────────┼───────────────────┘
                                    │                        │
                                    │                        │
                                    │                        │
┌───────────────────────────────────┼────────────────────────┼───────────────────┐
│                          DEBIAN VM │                        │                   │
├───────────────────────────────────┼────────────────────────┼───────────────────┤
│                                   │                        │                   │
│  ┌─────────────────┐    ┌─────────▼─────────┐    ┌─────────▼─────────┐        │
│  │   SSH Server    │    │   Docker Engine   │    │   Containers      │        │
│  │                 │    │                   │    │                   │        │
│  │ • sshd          │    │ • dockerd         │    │ • App containers  │        │
│  │ • Port 22       │    │ • containerd      │    │ • Service ports   │        │
│  │ • Key auth      │    │ • runc            │    │ • Isolated env    │        │
│  └─────────────────┘    └───────────────────┘    └───────────────────┘        │
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
```

## Core Components

### 1. Host System Components

#### Docker CLI
- **Purpose**: Provides the familiar Docker command-line interface
- **Location**: Host system (macOS/Linux)
- **Communication**: Communicates with Docker Engine via Unix socket forwarding
- **Benefits**: No changes required to existing Docker workflows

#### TDD Scripts
- **Purpose**: Orchestrate connections between host and VM
- **Components**:
  - `tdd-connect`: Establishes Docker socket connection
  - `tdd-tunnel`: Manages SSH port forwarding
  - `tdd-use`: Switches between different VM architectures
  - `tdd-disconnect`: Cleanly terminates connections

#### SSH Client
- **Purpose**: Secure communication channel to VM
- **Features**:
  - Socket forwarding for Docker API
  - Port forwarding for container services
  - Key-based authentication
  - Connection multiplexing

### 2. Debian VM Components

#### SSH Server
- **Purpose**: Secure remote access to VM
- **Configuration**:
  - Key-based authentication only
  - Disabled password authentication
  - Custom port configuration support
  - Connection logging

#### Docker Engine
- **Purpose**: Container runtime and management
- **Components**:
  - `dockerd`: Docker daemon
  - `containerd`: Container runtime
  - `runc`: Low-level container runtime
- **Configuration**:
  - TCP socket disabled (security)
  - Unix socket accessible via SSH forwarding
  - Custom network configurations

#### Containers
- **Purpose**: Isolated application environments
- **Features**:
  - Network isolation
  - Resource limits
  - Volume mounting
  - Inter-container communication

## Data Flow

### Socket Connection Flow

1. **Initialization**: User executes `tdd-connect arm64`
2. **SSH Connection**: Script establishes SSH connection to VM
3. **Socket Forwarding**: SSH forwards Unix socket from VM to host
4. **Environment Setup**: `DOCKER_HOST` environment variable is configured
5. **CLI Communication**: Docker CLI communicates with engine via forwarded socket

### Port Forwarding Flow

1. **Tunnel Request**: User executes `tdd-tunnel -p 3000 -p 8080`
2. **SSH Tunneling**: SSH creates port forwarding rules
3. **Container Binding**: Containers bind to VM ports
4. **Host Access**: Host applications access container services via forwarded ports

### Multi-Architecture Support

```
Host System
├── ARM64 Environment
│   ├── Docker Socket: unix:///tmp/docker-on-debian.sock
│   ├── VM: debian-arm64
│   └── Containers: ARM64 images
└── x86_64 Environment
    ├── Docker Socket: unix:///tmp/docker-on-debianx64.sock
    ├── VM: debian-x86_64
    └── Containers: x86_64 images
```

## Security Architecture

### Network Isolation
- VMs run in isolated network segments
- No direct network access between VMs
- Host-VM communication only via SSH

### Authentication
- SSH key-based authentication
- No password authentication
- Key rotation support

### Container Security
- Containers run with limited privileges
- Resource constraints enforced
- Network policies applied

## Performance Considerations

### Socket Optimization
- Connection multiplexing reduces latency
- Keep-alive connections minimize overhead
- Batch operations when possible

### Resource Management
- VM memory allocation based on workload
- CPU limits prevent resource contention
- Disk I/O optimization for container storage

## Monitoring and Observability

### VM Monitoring
- Resource utilization tracking
- Connection status monitoring
- Performance metrics collection

### Container Monitoring
- Container health checks
- Resource usage monitoring
- Log aggregation

## Scalability

### Horizontal Scaling
- Multiple VMs per host
- Load balancing across VMs
- Distributed container orchestration

### Vertical Scaling
- Dynamic resource allocation
- Auto-scaling based on demand
- Resource limit adjustments

## Disaster Recovery

### Backup Strategy
- VM snapshot capabilities
- Container image backup
- Configuration backup

### Recovery Procedures
- Automated VM recovery
- Container state restoration
- Configuration rollback

## Integration Points

### CI/CD Integration
- Automated VM provisioning
- Container build pipelines
- Testing environment setup

### Development Workflow
- IDE integration
- Debugging capabilities
- Live reload support

## Future Enhancements

### Planned Features
- Kubernetes integration
- Container orchestration
- Advanced networking
- Multi-cloud support

### Performance Improvements
- Faster VM startup
- Optimized networking
- Enhanced caching
