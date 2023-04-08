#!/bin/bash

# Check if the user has provided the filename and installation method
if [ $# -ne 2 ]; then
  echo "Usage: $0 <filename> <method>"
  echo "  filename: Text file containing program or Flatpak app names (one per line)"
  echo "  method  : Installation method (dnf or flatpak)"
  exit 1
fi

# Check if the installation method is valid
if [ "$2" != "dnf" ] && [ "$2" != "flatpak" ]; then
  echo "Invalid installation method. Please choose either dnf or flatpak."
  exit 1
fi

# Read the file line by line and install the programs or Flatpak apps
while read item; do
  echo "Installing $item..."
  if [ "$2" = "dnf" ]; then
    sudo dnf install -y $item
  elif [ "$2" = "flatpak" ]; then
    flatpak install -y $item
  fi
done < $1

echo "Installation complete."

