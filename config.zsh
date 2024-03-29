#!/bin/zsh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew upgrade

brew install git node nvm deno go tree jq gh protobuf
brew install --cask visual-studio-code docker

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add zsh-autosuggestions to .zshrc
sed -i '' '/^plugins=(/ s/)$/ zsh-autosuggestions)/' ${HOME}/.zshrc || echo "Failed to add zsh-autosuggestions plugin."

echo "🌱 Done. Open Visual Studio Code and run 'Shell Command: Install 'code' command in PATH' from the Command Palette."