#!/usr/bin/env bash
set -euo pipefail

LAB_ROOT="${HOME}/ai-security-lab"

echo "=============================================="
echo "        AI SECURITY LAB BASE SETUP"
echo "=============================================="

if [ "$(id -u)" -eq 0 ]; then
    echo "[ERROR] Do not run this script as root."
    exit 1
fi

echo "[1/6] Checking operating system..."
if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "[INFO] Detected: ${PRETTY_NAME:-Unknown}"
fi

echo "[2/6] Checking available disk space..."
FREE_KB="$(df -Pk / | awk 'NR==2 {print $4}')"
FREE_GB=$((FREE_KB / 1024 / 1024))
echo "[INFO] Available on /: ${FREE_GB} GB"

if [ "$FREE_GB" -lt 5 ]; then
    echo "[ERROR] Less than 5 GB is available."
    echo "[ERROR] Base setup stopped to protect disk space."
    exit 1
elif [ "$FREE_GB" -lt 10 ]; then
    echo "[WARNING] Less than 10 GB is available."
    echo "[WARNING] Continue only with small labs."
fi

echo "[3/6] Installing common base packages..."
sudo apt update
sudo apt install -y git curl wget python3 python3-venv python3-pip jq sqlite3 build-essential

echo "[4/6] Checking Docker..."
if ! command -v docker >/dev/null 2>&1; then
    echo "[INFO] Docker is not installed."
    echo "[INFO] On Kali, install using:"
    echo "       sudo apt install docker.io docker-compose"
    echo "       sudo systemctl enable --now docker"
else
    echo "[OK] Docker is installed."
fi

echo "[5/6] Creating lab directories..."
mkdir -p "$LAB_ROOT"/{repos,labs,notes,results,cache,environments}

echo "[6/6] Final environment check..."
if [ -x "./setup/check_environment.sh" ]; then
    ./setup/check_environment.sh
fi

echo
echo "Base setup completed."
echo
echo "Ollama was NOT installed."
echo "No local LLM was downloaded."
echo "Large AI/ML dependencies are installed per lab."
echo
echo "Next: read docs/LEARNING_PATH.md and choose one lab."
