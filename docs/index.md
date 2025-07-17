---
layout: default
title: Tiation Docker Debian
---

# Tiation Docker Debian

![Tiation Docker Debian](docs/images/tiation-docker-debian-logo.png)

**Enterprise-grade, open-source solution for using Docker on Debian**

## Key Features

- **💰 Cost-Effective**: Eliminate Docker Desktop licensing fees for enterprise use
- **🔒 Enhanced Security**: Full control over VM configuration and network isolation
- **🏗️ Multi-Architecture Support**: Native support for both ARM64 and x86_64 architectures
- **⚡ High Performance**: Optimized socket connections and SSH tunneling
- **🔧 Enterprise-Ready**: Built for scale with proper logging, monitoring, and automation support
- **🌐 Cross-Platform**: Works seamlessly on macOS (Intel  Apple Silicon) and Linux hosts

## Architecture

![Architecture Diagram](docs/images/architecture-diagram.png)

Tiation Docker Debian uses a modular architecture that separates the Docker Engine (running in a Debian VM) from the Docker CLI (running on the host). This separation provides:

- **Isolation**: Containers run in a separate VM, providing an additional security layer
- **Flexibility**: Support for multiple VMs with different architectures
- **Scalability**: Easy to manage multiple Docker environments

## Installation

### Automated Installation

```bash
curl -fsSL https://raw.githubusercontent.com/tiation/tiation-docker-debian/main/install.sh | bash
```

### Manual Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/tiation/tiation-docker-debian.git
   cd tiation-docker-debian
   ```

2. **Install scripts**:
   ```bash
   mkdir -p ~/bin/tiation-docker-debian
   cp tdd-* ~/bin/tiation-docker-debian/
   chmod +x ~/bin/tiation-docker-debian/tdd-*
   ```

3. **Add to PATH**:
   ```bash
   echo 'export PATH=$PATH:~/bin/tiation-docker-debian' >> ~/.bashrc
   source ~/.bashrc
   ```

## Usage

### Basic Commands
#### Connect to Docker Socket
```bash
# Connect to ARM64 VM
tdd-connect arm64

# Connect to x86_64 VM
tdd-connect x86_64
```

### Advanced Usage
For advanced usage scenarios, see [Usage Guide](docs/USAGE.md).

## Enterprise Deployment

### Deployment Options

1. **Single-Host Deployment**: Ideal for individual developers
2. **Team Deployment**: Shared VM infrastructure for development teams
3. **CI/CD Integration**: Automated container builds and testing

For detailed enterprise deployment strategies, see [Enterprise Deployment Guide](docs/ENTERPRISE_DEPLOYMENT.md).

### Security Considerations

- **Network Isolation**: VMs run in isolated network segments
- **SSH Key Management**: Automated key rotation and management
- **Audit Logging**: Full audit trail of container operations
- **Compliance**: SOC2 and HIPAA compliant configurations available

## Troubleshooting

For comprehensive troubleshooting, see [Troubleshooting Guide](docs/TROUBLESHOOTING.md).

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

### Development Setup

```bash
# Fork and clone the repository
git clone https://github.com/YOUR_USERNAME/tiation-docker-debian.git
cd tiation-docker-debian

# Create a feature branch
git checkout -b feature/your-feature-name

# Make your changes and test
./test.sh

# Submit a pull request
```

---

<div align="center">
  Made with ❤️ by <a href="https://tiation.com">Tiation</a>
</div>

