#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

brew cask install android-studio
brew cask install docker
brew cask install iterm2
brew cask install paw
brew cask install spotify
brew cask install slack
brew cask install visual-studio-code
brew cask install vlc
brew cask install tunnelbear
brew cask install sublime-text