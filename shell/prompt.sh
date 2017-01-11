if [[ -e /usr/lib/git-core/git-sh-prompt ]]; then
  . /usr/lib/git-core/git-sh-prompt
fi

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="[\u] \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
