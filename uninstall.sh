#!/bin/bash

# File containing the list of directories
folder_file="folder_list.txt"

# Destination directory where symlinks are located
destination="$HOME/.config"

# Check if the folder list file exists
if [ ! -f "$folder_file" ]; then
  echo "Folder list file does not exist."
  exit 1
fi

# Read the list from the file and remove symlinks
while read -r folder; do
  symlink_path="$destination/$folder"
  if [ -L "$symlink_path" ]; then
    rm "$symlink_path"
    echo "Deleted symlink for $folder"
  elif [ -e "$symlink_path" ]; then
    echo "$symlink_path exists but is not a symlink. Not removed."
  else
    echo "No symlink for $folder to delete"
  fi
done < "$folder_file"

