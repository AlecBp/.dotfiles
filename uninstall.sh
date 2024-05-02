#!/bin/bash

# List of symlinked directories to remove
folders=("skhd" "yabai" "iterm2")

# Destination directory where symlinks are located
destination="$HOME/.config"

# Loop through each folder in the list
for folder in "${folders[@]}"; do
  # Path of the symlink in the destination directory
  symlink_path="$destination/$folder"

  # Check if the symlink exists
  if [ -L "$symlink_path" ]; then
    # Remove the symlink
    rm "$symlink_path"
    echo "Deleted symlink for $folder"
  elif [ -e "$symlink_path" ]; then
    echo "$symlink_path exists but is not a symlink. Not removed."
  else
    echo "No symlink for $folder to delete"
  fi
done

