#!/usr/bin/env bash

#install nvm and node
echo "Check NVM and NODE"
if [ ! -d ~/.nvm ]; then
  echo "Installing NVM..."
  ruby -e "$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash)"
  echo "Installing Node..."
  nvm install --lts
else
  echo "Already installed!"
fi

# Check for Homebrew to be present, install if it's missing
echo "Check Homebrew"
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Already installed!"
fi

# Update homebrew recipes
echo "Homebrew Update"
brew update -v

PACKAGES=(
  git
  yarn
  bat
  fzf
  readline
)
echo "Installing packages..."
brew install ${PACKAGES[@]}
# any additional steps you want to add here
# link readline
brew link --force readline

echo "Fira code"
brew tap caskroom/fonts
brew cask install font-fira-code

echo "Cleaning up..."
brew cleanup

