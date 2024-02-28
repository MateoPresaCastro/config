#!/bin/zsh

while read line;
  do code --install-extension $line;
done < vscode-extension-list.txt

printf "\nSetup completed! ✨\n"