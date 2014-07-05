#! /usr/bin/env bash

DOTFILES_LOCATION="/Users/$(whoami)/Dropbox/Misc/dotfiles/"
FILES=("bash_profile" "bin" "ctags" "gitconfig" "gvimrc" "mackup.cfg" "slate" "tmux.conf" "vimrc" "vim")

for i in ${FILES[@]};
	do
		ln -s "$DOTFILES_LOCATION$i" "/Users/$(whoami)/.$i"
	done
