#!/bin/bash

# Install TypeScript Language Server for LSP
echo "Installing TypeScript and TypeScript Language Server"

# Install Node.js if not already installed
if ! command -v node &> /dev/null; then
    echo "Node.js not found. Installing..."
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt install -y nodejs
else
    echo "Node.js already installed: $(node -v)"
fi

# Install TypeScript and tsserver
npm install -g typescript typescript-language-server

echo "TypeScript and Language Server Installed"
echo "TypeScript Version: $(tsc --version)"
echo "TypeScript Language Server Version: $(typescript-language-server --version)"


# Default Sublime Text directory on Linux
SUBLIME_DIR="$HOME/.config/sublime-text-3"
BACKUP_DIR="."  # Backup path passed as an argument

# Check if the backup path is provided
if [ -z "$BACKUP_DIR" ]; then
    echo "Usage: ./setup.sh"
    exit 1
fi

# Check if the backup directory exists
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Error: Backup directory not found at $BACKUP_DIR"
    exit 1
fi

# Check if the Sublime Text directory exists
if [ ! -d "$SUBLIME_DIR" ]; then
    echo "Error: Sublime Text directory not found at $SUBLIME_DIR"
    exit 1
fi

# Import the backup
echo "Restoring Sublime Text backup..."
cp -r "$BACKUP_DIR/Packages" "$SUBLIME_DIR/Packages/"
cp -r "$BACKUP_DIR/Installed Packages" "$SUBLIME_DIR/"

# Confirm the restoration
echo "Backup successfully restored!"
echo "Content restored from: $BACKUP_DIR"
echo "To: $SUBLIME_DIR"
echo "Setup complete!"
