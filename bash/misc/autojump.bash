# http://stackoverflow.com/questions/394230/detect-the-os-from-a-bash-script
unamestr=`uname`

if [[ "$unamestr" == 'Linux' ]]; then
    . /usr/share/autojump/autojump.sh
elif [[ "$unamestr" == 'Darwin' ]]; then # Darwin = OS X
  [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
fi
