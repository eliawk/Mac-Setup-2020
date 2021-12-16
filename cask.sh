#!/usr/bin/env bash

echo "Installing cask..."
CASKS=(
  1password
  alfred
  backblaze
  cleanmymac
  docker
  duet
  folx
  fontplop
  iterm2
  lepton
  midi-monitor
  nordvpn
  opera
  chrome
  firefox
  poedit
  postman
  rectangle
  skype
  slack
  stremio
  steam
  supercollider
  telegram
  teamviewer
  the-unarchiver
  transmit
  visual-studio-code
  vlc
  vnc-viewer
)

brew install ${CASKS[@]}

# Not in cask

# Amphetamine
# Airmail3
# Adobe Premier
# Adobe Media Encoder
# Adobe XD
# MidiHub editor
# MaxMSP
# Ableton
# SoundToys
# Elektron
# Motu
# Ocean Audio
# Pixelmator
# Reference 4 (Soundwork)
# Splice