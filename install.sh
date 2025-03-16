#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Vide Coding Rules Installer${NC}"
echo "This script will install Vide coding rules for Cursor AI to your project."

# Use current directory
TARGET_DIR=$(pwd)
echo "Using current directory: $TARGET_DIR"

# Check if .cursor/rules directory exists, create if not
CURSOR_RULES_DIR="$TARGET_DIR/.cursor/rules"
if [ -d "$CURSOR_RULES_DIR" ]; then
  echo "Found existing .cursor/rules directory at $CURSOR_RULES_DIR"
else
  echo "Creating .cursor/rules directory at $CURSOR_RULES_DIR..."
  mkdir -p "$CURSOR_RULES_DIR"
fi

# Create temporary directory for cloning
TEMP_DIR=$(mktemp -d)
echo "Creating temporary directory: $TEMP_DIR"

# Clone the repository
echo "Cloning Vide coding rules repository..."
git clone https://github.com/maitrongnhan99/cursor-vide-coding-rules.git "$TEMP_DIR" || {
  echo "Failed to clone repository. Please check your internet connection."
  rm -rf "$TEMP_DIR"
  exit 1
}

# Copy the rules
echo "Copying rules to $CURSOR_RULES_DIR..."
cp "$TEMP_DIR"/*.mdc "$CURSOR_RULES_DIR/" || {
  echo "Failed to copy rules."
  rm -rf "$TEMP_DIR"
  exit 1
}

# Clean up
rm -rf "$TEMP_DIR"

echo -e "${GREEN}Installation complete!${NC}"
echo "Vide coding rules have been installed to $CURSOR_RULES_DIR"
echo "Cursor AI will now follow these guidelines when generating code in your project."