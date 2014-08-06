alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias be="bundle exec"


# Git aliases
# Completion tip: http://stackoverflow.com/a/15009611
alias gs="git status"
alias gd="git diff"
__git_complete gd _git_diff
alias gdc="git diff --cached"
alias gc="git commit"
__git_complete gc _git_commit
alias gf="git fixws"
alias ga="git add"
__git_complete ga _git_add
alias gall="git add --all"
alias gco="git checkout"
__git_complete gco _git_checkout
alias gp="git push"
__git_complete gp _git_push


# NON-OSX aliases
if [[ -z $(uname -a | grep -o Darwin) ]]; then
  alias ls='ls --color=auto'
fi

# VirtualBox
alias vb="VBoxManage"
