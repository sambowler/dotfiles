PS1="\[\033[32m\]\h \[\033[33;1m\]\w\[\033[m\] $ "

alias mysql='/Applications/MAMP/Library/bin/mysql'
alias mysqldump='/Applications/MAMP/Library/bin/mysqldump'
alias cdh='cd ~/Sites/'
alias cdhu='cd ~/Sites/uni/'
alias cdhe='cd ~/Sites/exp'
alias cdhf='cd ~/Sites/dev' 
alias cdhp='cd ~/Sites/per'
alias cdhr='cd ~/Sites/dev/ridgeway'
alias cdhx='cd ~/Sites/dev/xentek'
alias m='ssh sam@sambowler.dyndns.org'
alias ml='ssh sam@maggie'
alias sb='ssh sambowler@sambowler.com'
alias desk='cd ~/Desktop'
# OS X style gitk
alias gitk='/usr/bin/wish $(which gitk)'
# Highlighted grep results
alias grep="grep --color=auto"

# MacPorts Installer addition on 2010-06-21_at_15:25:21: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
