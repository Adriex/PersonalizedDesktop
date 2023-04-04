#!/bin/bash
# Writted by ChatGPT, not-analized and not-tested. Therefore this doesn't exist

# Set the path to the font directory
font_dir="$(pwd)"

# Create the font directory if it doesn't exist
mkdir -p "$HOME/.local/share/fonts"

# Install each font file in the font directory
for font_file in $(find $font_dir -type f -name "*.otf" -o -name "*.ttf"); do
    cp "$font_file" "$HOME/.local/share/fonts/"
done

# Update the font cache
fc-cache -f -v

echo "Fonts installed successfully!"

