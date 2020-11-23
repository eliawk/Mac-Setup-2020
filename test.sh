#!/usr/bin/env bash
echo "Test!!"

echo "NVM and Node"

if [ ! -d ~/.nvm ]; then
  echo "Installing NVM..."
  # ruby -e "$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash)"
  # echo "Installing Node..."
  # nvm install --lts
else
  echo "Already installed!"
fi


