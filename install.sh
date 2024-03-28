#!/bin/bash
dir=$(pwd)

cd ~/.config

for file in "$dir"/*; do
  name="${file##*/}"

  if [ ${name} != 'install.sh' ]; then
    if test -e $name; then
      echo "~/.config/$name exists. Skipping..."
    else
      ln -s $dir/$name .
      echo "Symlinked $dir/$name to ~/.config/$name"
    fi 
  fi
done
