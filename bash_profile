PS1="[\h] \[\e[0;33m\]\W \[\e[1;37m\]→ \[\e[m\]"

alias sb='ssh sambowler@sambowler.com'
alias desk='cd ~/Desktop'
alias dot='cd ~/Dropbox/Misc/dotfiles'
alias reload='. ~/.bash_profile'
alias ls='ls -FG'
alias ll='ls -la'
alias hg='history | grep $1'
alias bp='vim ~/.bash_profile'
alias ip='ifconfig | grep inet'
alias hosts='sudo vim /etc/hosts'
alias server='python ~/Dropbox/Misc/server.py'
alias bd='. bd -s'

# Functions
function mkcd { mkdir $1 && cd $_; }
function s { cd ~/Dropbox/htdocs/$1; }
function hs { history | grep $1; }
function grm { for i in `git status | grep deleted | awk '{print $3}'`; do git rm $i; done }

# Ack Search and Replace - http://stackoverflow.com/a/8744108
function asr { ack -la "$1" | xargs perl -pi -E "s/$1/$2/g"; }

# Pulls all git repo's within the current folder
function gpa { find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;; }
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
# Delete all .svn folders within current folder
function dsvn { find . -type d -name '.svn' -print -exec rm -rf {} \;; }

# Git aliases
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias ghist='git log --oneline --graph --decorate'
# Highlighted grep results
alias grep='grep --color=auto'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=~/Dropbox/Misc:$PATH
