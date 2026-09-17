#!/usr/bin/env bash
set -euo pipefail

echo "This removes only ~/ai-security-lab."
echo "It does NOT remove Docker, Ollama, or system packages."
read -r -p "Remove ~/ai-security-lab? [y/N]: " answer

if [[ "$answer" =~ ^[Yy]$ ]]; then
    rm -rf "${HOME}/ai-security-lab"
    echo "[OK] Local AI Security Lab directory removed."
else
    echo "[INFO] Nothing was removed."
fi
