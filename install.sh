#!/bin/bash

echo "This script will overwrite the .vimrc if it already exists."
read -p "Press enter to continue"

cp vimrc $HOME/.vimrc
echo "Done."

echo "Installing plugins..."
vim -E -c PlugInstall -c q -c q
echo "Done..."

echo "Copying snippets..."
cp -R UltiSnips $HOME/.vim/
echo "Done"