PS1="[\h] \[\e[0;33m\]\W \[\e[1;37m\]→ \[\e[m\]"

# Vim mode
set -o vi

PATH=~/Dropbox/Misc:$PATH
PATH=/usr/local/bin:$PATH
PATH=/Users/sam/Library/Android/sdk/platform-tools:$PATH
# export PATH=/usr/local/bin:/Users/samb/Dropbox/Misc:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin

BASH_FILE_LOC=~/Dropbox/Misc/dotfiles/bash

for file in $(find $BASH_FILE_LOC -name "*.bash");
do
    if [ -e "${file}" ]; then
        source $file
    fi
done

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f $(brew --prefix)/etc/profile.d/autojump.sh ]; then
    [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

PATH=/Users/samb/Library/Android/sdk/platform-tools:$PATH
