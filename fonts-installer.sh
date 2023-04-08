#!/bin/bash

# Check if the font directory is provided as an argument
if [ -z "$1" ]
then
  echo "Please provide the path to the font directory as an argument."
  exit 1
else
  font_dir="$1"
fi

# Create the font directory if it doesn't exist
mkdir -p "$HOME/.local/share/fonts"

# Install each font file in the font directory
for font_file in $(find "$font_dir" -type f -name "*.otf" -o -name "*.ttf"); do
    cp "$font_file" "$HOME/.local/share/fonts/"
done

# Update the font cache
fc-cache -f -v

echo "Fonts installed successfully!"


