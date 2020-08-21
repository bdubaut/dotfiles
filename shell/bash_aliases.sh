# VIM and bash commands
alias Bundle='vim +BundleInstall +qall'
alias ll='ls -alF -G'
alias la='ls -A -G'
alias l='ls -CF -G'
alias ..='cd ..'
alias ...='cd ../../../'

# Kubernetes Toolbox, to be modified manually on the machine for proper cluster
# access.
alias h="helm"
alias k="kubectl"

# GIT aliases
alias gl='glg $(git show-ref | cut -d " " -f 2 | grep -v stash$) HEAD'
alias glw='glp --word-diff'
alias gsw='git show --format=fuller'
alias gco='git checkout'
alias gcp='git checkout -p'
alias greset='git reset HEAD'
alias garp='git reset -p HEAD'
alias gwip='git wip save WIP --untracked'
alias gdt='git difftool'
alias reflog="git reflog --format='%C(auto)%h %<|(17)%gd %C(blue)%ci%C(reset) %gs'"

function git-log() {
  git log -M40 --pretty=format:'%Cred%h%Creset%C(yellow)%d%Creset %s %C(green bold)- %an %C(black bold)%cd (%cr)%Creset' --abbrev-commit --date=short "$@"
}

# git log
function glg() {
  if [[ $# == 0 ]] && git rev-parse @{u} &> /dev/null; then
    git-log --graph @{u} HEAD
  else
    git-log --graph "$@"
  fi
}

