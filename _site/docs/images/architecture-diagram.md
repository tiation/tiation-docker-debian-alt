# Architecture Diagram Placeholder

**File:** `architecture-diagram.png`

This file should contain a visual representation of the Tiation Docker Debian architecture showing:

## Components to Include:

### Host System
- Docker CLI
- TDD Scripts (tdd-connect, tdd-tunnel, etc.)
- SSH Client

### Network Layer
- SSH Connection
- Socket Forwarding
- Port Forwarding

### Debian VM
- SSH Server
- Docker Engine (dockerd, containerd, runc)
- Containers

## Recommended Tools for Creating Diagram:
- Draw.io (free, web-based)
- Lucidchart
- Visio
- Figma

## Suggested Diagram Elements:
- Boxes for components
- Arrows showing data flow
- Network boundaries
- Security layers
- Port numbers and protocols

## Color Scheme:
- Blue: Host components
- Green: Network/SSH layer
- Orange: VM components
- Gray: Containers
