#!/bin/bash

# error handling of undefined variables
set -u

echo "start setup..."
for f in .??*; do
  [ "$f" = ".git" ] && continue
  [ "$f" = ".gitignore" ] && continue

  ln -snfv ~/dotfiles/"$f" ~/
done

