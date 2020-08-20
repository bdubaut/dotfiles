for file in \
  /usr/local/etc/bash_completion.d/git-completion.bash; do
  [ -f "$file" ] && source $file
done
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

source ~/.fresh/build/shell.sh

if [ -f /usr/local/opt/asdf/asdf.sh ]; then
  source /usr/local/opt/asdf/asdf.sh
fi
