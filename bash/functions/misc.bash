# Make directory and CD to it
function mcd { mkdir $1 && cd $_; }

# Ack Search and Replace - http://stackoverflow.com/a/8744108
function asr { ack -la "$1" | xargs perl -pi -E "s/$1/$2/g"; }
