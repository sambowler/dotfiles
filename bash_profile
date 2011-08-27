PS1="[\h] \[\e[0;33m\]\W \[\e[1;37m\]→ \[\e[m\]"

alias mysql='/Applications/MAMP/Library/bin/mysql'
alias mysqldump='/Applications/MAMP/Library/bin/mysqldump'
alias sb='ssh sambowler@sambowler.com'
alias desk='cd ~/Desktop'
alias dot='cd ~/Dropbox/Misc/dotfiles'
alias reload='. ~/.bash_profile'
alias ls='ls -FG'
alias hg='history | grep $1'
alias bp='vim ~/.bash_profile'
alias startvm='VBoxManage startvm "Ubuntu Server" --type headless'
alias ip='ifconfig | grep inet'

# Functions
function s { cd ~/Sites/$1; }
function hs { history | grep $1; }
function grm { for i in `git status | grep deleted | awk '{print $3}'`; do git rm $i; done }
cp_p() {
   strace -q -ewrite cp -- "${1}" "${2}" 2>&1 \
      | awk '{
        count += $NF
            if (count % 10 == 0) {
               percent = count / total_size * 100
               printf "%3d%% [", percent
               for (i=0;i<=percent;i++)
                  printf "="
               printf ">"
               for (i=percent;i<100;i++)
                  printf " "
               printf "]\r"
            }
         }
         END { print "" }' total_size=$(stat -c '%s' "${1}") count=0
}

# Git aliases
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
# OS X style gitk
alias gitk='/usr/bin/wish $(which gitk)'
# Highlighted grep results
alias grep='grep --color=auto'

# MacPorts Installer addition on 2010-06-21_at_15:25:21: adding an appropriate PATH variable for use with MacPorts.
export PATH=/Developer/temp/local/node/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export NODE_PATH=/Developer/temp/local/node:/Developer/temp/local/node/lib/node_modules
# Gem Home

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
