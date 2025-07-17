---
layout: page
title: Usage Guide
---

# Usage Guide

This guide covers the basic and advanced usage of Tiation Docker Debian.

## Basic Commands

### Connect to Docker Socket
```bash
# Connect to ARM64 VM
tdd-connect arm64

# Connect to x86_64 VM
tdd-connect x86_64
```

### Port Forwarding
```bash
# Forward ports 3000 and 8080
tdd-tunnel -a arm64 -p 3000 -p 8080

# Kill specific port forwarding
tdd-tunnel-kill -a arm64 -p 3000
```

### Disconnect
```bash
# Disconnect from socket
tdd-disconnect arm64
```

### Switch Architecture
```bash
# Switch to x86_64 Docker environment
$(tdd-use x86_64)
```

## Advanced Usage

### Custom SSH Keys
```bash
# Use custom SSH key
tdd-connect arm64 -k ~/.ssh/custom_key
```

### Multi-VM Management
```bash
# Connect to multiple VMs simultaneously
tdd-connect arm64 &
tdd-connect x86_64 &
```

### Container Management
```bash
# Run containers on specific architecture
$(tdd-use arm64)
docker run --name web-app -p 3000:3000 nginx

$(tdd-use x86_64)
docker run --name db -p 5432:5432 postgres
```

For troubleshooting, see the [Troubleshooting Guide](/tiation-docker-debian/docs/TROUBLESHOOTING).
