#!/bin/bash

# Tiation Docker Debian - Enterprise Help System
# Version: 2.0.0

cat << 'EOF'

████████╗██╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
╚══██╔══╝██║██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
   ██║   ██║███████║   ██║   ██║██║   ██║██╔██╗ ██║
   ██║   ██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
   ██║   ██║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
   ╚═╝   ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝

██████╗  ██████╗  ██████╗██╗  ██╗███████╗██████╗     ██████╗ ███████╗██████╗ ██╗ █████╗ ███╗   ██╗
██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗    ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗████╗  ██║
██║  ██║██║   ██║██║     █████╔╝ █████╗  ██████╔╝    ██║  ██║█████╗  ██████╔╝██║███████║██╔██╗ ██║
██║  ██║██║   ██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗    ██║  ██║██╔══╝  ██╔══██╗██║██╔══██║██║╚██╗██║
██████╔╝╚██████╔╝╚██████╗██║  ██╗███████╗██║  ██║    ██████╔╝███████╗██████╔╝██║██║  ██║██║ ╚████║
╚═════╝  ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝    ╚═════╝ ╚══════╝╚═════╝ ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝

EOF

echo "🚀 Tiation Docker Debian v2.0.0 - Enterprise Edition"
echo "═══════════════════════════════════════════════════════════════════════════════════"
echo ""
echo "📋 DESCRIPTION"
echo "   Enterprise-grade Docker Desktop alternative using Debian VMs"
echo "   Provides secure, cost-effective containerization for development and production"
echo ""
echo "🔧 CORE COMMANDS"
echo "   tdd-connect ARCH [OPTIONS]     Connect to Docker Engine in VM"
echo "   tdd-disconnect ARCH           Disconnect from Docker Engine"
echo "   tdd-tunnel [OPTIONS]          Manage SSH port forwarding"
echo "   tdd-tunnel-kill [OPTIONS]     Kill specific port tunnels"
echo "   tdd-use ARCH                  Switch Docker environment"
echo "   tdd-status                    Show connection status"
echo "   tdd-help                      Show this help message"
echo ""
echo "🏗️ ARCHITECTURE SUPPORT"
echo "   arm64                         Apple Silicon (M1/M2) and ARM64 systems"
echo "   x86_64                        Intel/AMD 64-bit systems"
echo ""
echo "📚 EXAMPLES"
echo "   # Connect to ARM64 VM"
echo "   tdd-connect arm64"
echo ""
echo "   # Connect with custom SSH key"
echo "   tdd-connect arm64 -k ~/.ssh/custom_key"
echo ""
echo "   # Forward ports 3000 and 8080"
echo "   tdd-tunnel -a arm64 -p 3000 -p 8080"
echo ""
echo "   # Switch to x86_64 environment"
echo "   \$(tdd-use x86_64)"
echo ""
echo "   # Check connection status"
echo "   tdd-status"
echo ""
echo "💼 ENTERPRISE FEATURES"
echo "   ✅ Multi-architecture support (ARM64 + x86_64)"
echo "   ✅ Secure SSH-based connections"
echo "   ✅ Enterprise logging and monitoring"
echo "   ✅ Configuration management"
echo "   ✅ Automated connection health checks"
echo "   ✅ Cost-effective Docker Desktop replacement"
echo ""
echo "🔒 SECURITY"
echo "   • SSH key-based authentication only"
echo "   • Network isolation between VMs"
echo "   • Audit logging enabled"
echo "   • SOC2 and HIPAA compliant configurations"
echo ""
echo "📖 DOCUMENTATION"
echo "   Architecture:     docs/ARCHITECTURE.md"
echo "   Installation:     docs/INSTALLATION.md"
echo "   Usage Guide:      docs/USAGE.md"
echo "   Enterprise:       docs/ENTERPRISE_DEPLOYMENT.md"
echo "   Troubleshooting:  docs/TROUBLESHOOTING.md"
echo ""
echo "🌐 SUPPORT"
echo "   Issues:           https://github.com/tiation/tiation-docker-debian/issues"
echo "   Discussions:      https://github.com/tiation/tiation-docker-debian/discussions"
echo "   Enterprise:       enterprise@tiation.com"
echo "   Documentation:    docs.tiation.com/docker-debian"
echo ""
echo "📄 LICENSE"
echo "   MIT License - Originally created by James Mortensen, 2022"
echo "   Copyright (c) 2024 Tiation"
echo ""
echo "═══════════════════════════════════════════════════════════════════════════════════"
echo "💡 Pro Tip: Run 'tdd-connect arm64' to get started with your ARM64 VM!"
echo ""
