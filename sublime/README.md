# SETUP FOR SUBLIME TEXT 3 WITH VINTAGEOUS (VIM LIKE)

## Install

- sudo _./setup.sh_ or _./setup.sh /home/.config/your-sublime-config_

## Setup copilot

- CTRL + SHIFT + F > Copilot: signin > login at github > authorize > paste the code previously copied (its automatic)

## Include packages


### **LSP Packages**
These packages enable Language Server Protocol (LSP) support for various programming languages:
- **LSP**: Core package for LSP integration in Sublime Text.
- **LSP-pyright**: Provides LSP support for Python using Pyright.
- **LSP-intelephense**: Adds LSP support for PHP with Intelephense.
- **LSP-bash**: Adds LSP support for Bash scripting.
- **LSP-copilot**: Integrates GitHub Copilot into Sublime Text.
- **LSP-eslint**: Provides LSP support for JavaScript and TypeScript with ESLint.
- **LSP-typescript**: Adds LSP support specifically for TypeScript.

### **Enhancements and Utilities**
- **SideBarEnhancements**: Adds extra features to the file sidebar, such as new file creation, duplication, and more.
- **NeoVintageous**: A modern and enhanced implementation of Vim emulation in Sublime Text.
- **Tab Filter**: Allows filtering and organizing open tabs based on custom rules.

### **Color Schemes**
- **OLED Color Scheme**: A dark color scheme optimized for OLED screens.

### **PHP-Specific Packages**
- **PHP Completions Kit**: Provides code completions for PHP functions, classes, and constants.
- **PhpDoc**: Adds support for PHP documentation (DocBlocks) in the editor.
- **LSP-intelephense**: (Mentioned above) Advanced PHP language support.

### **Package Manager**
- **Package Control**: The essential package manager for Sublime Text, allowing installation and management of plugins.

## To edit keymaps

- CTRL + SHIFT + P > open neovintageous.rc