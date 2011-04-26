PS1="\\e[0;33m\]\W\e[m\] \e[0;37m\]→ \e[m\]"

alias mysql='/Applications/MAMP/Library/bin/mysql'
alias mysqldump='/Applications/MAMP/Library/bin/mysqldump'
function s { cd ~/Sites/$1; }
alias sb='ssh sambowler@sambowler.com'
alias desk='cd ~/Desktop'
alias dot='cd ~/Dropbox/Misc/dotfiles'
alias reload='. ~/.bash_profile'
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
alias grep="grep --color=auto"

# MacPorts Installer addition on 2010-06-21_at_15:25:21: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export NODE_PATH=/usr/local/lib/node
