# Remove all deleted files
function grm { for i in `git status | grep deleted | awk '{print $3}'`; do git rm $i; done }

# Pull all git repo's within the current folder
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
