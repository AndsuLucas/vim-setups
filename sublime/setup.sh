#!/bin/bash
echo "Installing TypeScript and TypeScript Language Server"

# Install Node.js if not already installed
if [ ! command -v node &> /dev/null ]; then
    echo "Node.js not found. Installing..."
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt install -y nodejs
else
    echo "Node.js already installed: $(node -v)"
fi

# Install Typescript and Typescript-lenguage-server if not already installed
command npm list -g typescript typescript-language-server &> /dev/null
if [ ! command npm list -g typescript typescript-lenguage-server &> /dev/null ]; then
    echo "Typescript and typescript-language-server not found. Installing."
    npm install -g typescript typescript-language-server
else
    echo "Typescript and typescript-language-server already installed"
    command npm list -g typescript typescript-lenguage-server
fi

echo "TypeScript and Language Server Installed"
echo "TypeScript Version: $(tsc --version)"
echo "TypeScript Language Server Version: $(typescript-language-server --version)"


# Default Sublime Text directory on Linux
SUBLIME_DIR=$(eval echo "~$SUDO_USER/.config/sublime-text")
if [ ! -z "$1" ]; then
  SUBLIME_DIR="$1"
fi

if [ ! -d "$SUBLIME_DIR" ]; then
  mkdir "$SUBLIME_DIR"
fi

BACKUP_DIR="."  # Backup path passed as an argument

# Import the backup
echo "Restoring Sublime Text backup..."
cp -r -f "$BACKUP_DIR/configs/Installed Packages" "$SUBLIME_DIR"
cp -r -f "$BACKUP_DIR/configs/Packages" "$SUBLIME_DIR"

# Confirm the restoration
echo "Backup successfully restored!"
echo "Content restored from: $BACKUP_DIR"
echo "To: $SUBLIME_DIR"
echo "Setup complete!"
