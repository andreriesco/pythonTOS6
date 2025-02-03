#!/bin/bash

echo "🐚 SETUP XONSH"

# check if xonsh is on $HHOME/.local/bin
if [ -f "$HOME/.local/bin/xonsh" ]; then
    echo "xonsh is already installed"
    echo "all ok ✅"
    exit 0
fi

# fail as soon as a command fails, and return the exit status
set -e

pipx install xonsh
pipx ensurepath
pipx inject xonsh distro
pipx inject xonsh shtab
pipx inject xonsh pyyaml
pipx inject xonsh psutil
pipx inject xonsh torizon-templates-utils
pipx inject xonsh GitPython
pipx inject xonsh xontrib-powerline2
pipx inject xonsh python-lsp-server
pipx inject xonsh pylsp-rope
