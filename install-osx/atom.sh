#!/bin/sh

echo "Configuring Atom..."

currentDir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
dir="$currentDir/../atom"

# Create symlinks
ln -sf "$dir/keymap.cson" ~/.atom/keymap.cson
ln -sf "$dir/init.coffee" ~/.atom/init.coffee
ln -sf "$dir/snippets.cson" ~/.atom/snippets.cson
ln -sf "$dir/styles.less" ~/.atom/styles.less

# Install packages
apm install --packages-file "$dir/packages.txt"

echo "...Atom configured"
