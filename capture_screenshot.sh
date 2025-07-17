#!/bin/bash

# Tiation Docker Debian - Screenshot Capture Script
# This script demonstrates the help output and captures a screenshot

echo "🎬 Preparing to capture Tiation Docker Debian screenshot..."
echo "📸 Screenshot will be saved to docs/images/tdd-help-screenshot.png"
echo ""
echo "⏱️  Starting capture in 3 seconds..."
sleep 1
echo "⏱️  2..."
sleep 1
echo "⏱️  1..."
sleep 1
echo ""

# Clear screen and show the help
clear
./tdd-help.sh

echo ""
echo "📸 Screenshot captured! Check docs/images/tdd-help-screenshot.png"
