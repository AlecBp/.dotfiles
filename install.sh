#!/bin/bash

# List of directories to create symlinks for
folders=("skhd" "yabai" "iterm2")

# Destination directory for symlinks
destination="$HOME/.config"

# Loop through each folder in the list
for folder in "${folders[@]}"; do
  # Check if the folder exists in the current directory
  if [ -d "$folder" ]; then
    # Create a symlink in the destination directory pointing to the current directory's folder
    ln -s "$(pwd)/$folder" "$destination/$folder"
    echo "Created symlink for $folder"
  else
    echo "Folder $folder does not exist in the current directory"
  fi
done

