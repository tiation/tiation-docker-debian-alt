---
layout: page
title: Troubleshooting Guide
---

# Troubleshooting Guide

This guide provides solutions to common issues faced while using Tiation Docker Debian.

## Common Issues

### Connection Refused

1. **Check VM Status**:
   - Ensure the VM is running.
   ```bash
   tdd-status
   ```

2. **Restart Connection**:
   - Attempt to reconnect if the connection is lost.
   ```bash
   tdd-restart arm64
   ```

### Port Already in Use

1. **List Active Tunnels**:
   - Review existing port connections.
   ```bash
   tdd-tunnel-list
   ```

2. **Kill All Tunnels**:
   - Terminate existing connections and start fresh.
   ```bash
   tdd-tunnel-kill-all
   ```

### Performance Degradation

1. **Resource Utilization**:
   - Monitor usage and optimize resources.
   ```bash
   top
   ```

2. **Scaling Options**:
   - Consider horizontal or vertical scaling to improve performance.

## Advanced Troubleshooting

### Logs and Monitoring

1. **Enable Detailed Logs**:
   - Enable and review logs for more insights.
   ```bash
   tdd-logs enable
   tail -f /var/log/tdd.log
   ```

### Network Issues

1. **Check Firewall Settings**:
   - Ensure ports are not blocked.
   ```bash
   sudo ufw status
   ```

## Contact for Support

For further assistance, please contact us at [tiatheone@protonmail.com](mailto:tiatheone@protonmail.com) or visit our [GitHub Discussions](https://github.com/tiaastor/tiation-docker-debian/discussions).
