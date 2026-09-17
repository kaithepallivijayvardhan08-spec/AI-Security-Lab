#!/usr/bin/env bash
set -u

echo "=============================================="
echo "       AI SECURITY LAB ENVIRONMENT CHECK"
echo "=============================================="

if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "OS              : ${PRETTY_NAME:-Unknown}"
else
    echo "OS              : Unknown"
fi

echo "Architecture    : $(uname -m)"
echo "Python          : $(python3 --version 2>/dev/null || echo 'Not installed')"
echo "Git             : $(git --version 2>/dev/null || echo 'Not installed')"
echo "Docker          : $(docker --version 2>/dev/null || echo 'Not installed')"
echo "Docker Compose  : $(docker compose version 2>/dev/null || echo 'Not installed')"

echo
echo "Disk:"
df -h / | awk 'NR==1 || NR==2'

FREE_KB="$(df -Pk / | awk 'NR==2 {print $4}')"
FREE_GB=$((FREE_KB / 1024 / 1024))

echo
if [ "$FREE_GB" -ge 10 ]; then
    echo "[OK] Approximately ${FREE_GB} GB is available."
elif [ "$FREE_GB" -ge 5 ]; then
    echo "[WARNING] Approximately ${FREE_GB} GB is available. Use storage-aware labs."
else
    echo "[WARNING] Less than 5 GB is available. Do not install large AI models."
fi

echo
echo "Docker storage:"
if command -v docker >/dev/null 2>&1; then
    docker system df 2>/dev/null || echo "[INFO] Docker storage information unavailable."
else
    echo "[INFO] Docker is not installed."
fi

echo "=============================================="
echo "Check complete."
echo "=============================================="
