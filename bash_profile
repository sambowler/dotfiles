PS1="[\h] \[\e[0;33m\]\W \[\e[1;37m\]→ \[\e[m\]"

# Vim mode
set -o vi

PATH=~/Dropbox/Misc:$PATH
PATH=/usr/local/bin:$PATH
# export PATH=/usr/local/bin:/Users/samb/Dropbox/Misc:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin

BASH_FILE_LOC=~/Dropbox/Misc/dotfiles/bash

for file in $(find $BASH_FILE_LOC -name "*.bash");
do
    if [ -e "${file}" ]; then
        source $file
    fi
done
