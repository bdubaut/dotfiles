for file in \
  /usr/local/etc/bash_completion.d/git-completion.bash; do
  [ -f "$file" ] && source $file
done
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source ~/.fresh/build/shell.sh
source /usr/local/opt/asdf/asdf.sh
