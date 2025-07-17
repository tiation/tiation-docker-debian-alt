---
layout: page
title: Installation Guide
---

# Installation Guide

This guide will walk you through the installation process for Tiation Docker Debian.

## Automated Installation

```bash
curl -fsSL https://raw.githubusercontent.com/tiation/tiation-docker-debian/main/install.sh | bash
```

## Manual Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/tiaastor/tiation-docker-debian.git
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

For detailed configuration, please see the [Configuration Guide](/tiation-docker-debian/docs/CONFIGURATION).
