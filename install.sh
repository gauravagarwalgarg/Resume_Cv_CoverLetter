#!/bin/bash
# Install LaTeX dependencies for Awesome-CV on Ubuntu/Debian
# Usage: ./install.sh

set -e

echo "Installing TeX Live packages for Awesome-CV..."

sudo apt-get update
sudo apt-get install -y \
    texlive-xetex \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    texlive-latex-extra \
    texlive-latex-recommended \
    fonts-roboto \
    poppler-utils

echo ""
echo "Installation complete. Build with:"
echo "  make all"
echo ""
echo "Or individually:"
echo "  make resume"
echo "  make cv"
echo "  make cover"
