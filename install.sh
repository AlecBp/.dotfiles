#!/bin/bash

# File containing the list of directories
folder_file="folder_list.txt"

# Destination directory for symlinks
destination="$HOME/.config"

# Check if the folder list file exists
if [ ! -f "$folder_file" ]; then
  echo "Folder list file does not exist."
  exit 1
fi

# Read the list from the file and create symlinks
while read -r folder; do
  if [ -d "$folder" ]; then
    ln -s "$(pwd)/$folder" "$destination/$folder"
    echo "Created symlink for $folder"
  else
    echo "Folder $folder does not exist in the current directory"
  fi
done < "$folder_file"

