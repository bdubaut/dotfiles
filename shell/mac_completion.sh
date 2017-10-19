for file in \
  /usr/local/etc/bash_completion.d/git-completion.bash; do
  [ -f "$file" ] && source $file
done
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
