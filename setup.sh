#!/usr/bin/env bash

# install antidote (zsh)
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote

# install tpm (tmux)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# stow
stow git nvim zsh tmux
