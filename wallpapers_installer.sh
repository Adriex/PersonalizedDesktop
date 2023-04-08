#!/bin/bash

# get the path to the script's directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# check if Wallpaper directory already exists in the script's directory
if [ -d "$SCRIPT_DIR/Wallpaper" ]; then
  echo "Wallpaper directory already exists in $SCRIPT_DIR."
  exit 1
fi

# ask the user whether to create symbolic links or copy the directory
echo "Do you want to create symbolic links or copy the directory? (enter 'link' or 'copy')"
read choice

# if the user chooses to create symbolic links
if [ "$choice" == "link" ]; then
  # create symbolic link to Pictures directory in the script's directory
  ln -s "$(xdg-user-dir PICTURES)" "$SCRIPT_DIR/Wallpaper"
  echo "Symbolic link created successfully."
# if the user chooses to copy the directory
elif [ "$choice" == "copy" ]; then
  # copy Pictures directory to the script's directory
  cp -r "$(xdg-user-dir PICTURES)" "$SCRIPT_DIR/Wallpaper"
  echo "Directory copied successfully."
else
  echo "Invalid choice. Please enter 'link' or 'copy'."
  exit 1
fi

exit 0
