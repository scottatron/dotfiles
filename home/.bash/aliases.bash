alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias be="bundle exec"
alias gs="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias gc="git commit"
alias gf="git fixws"
alias ga="git add"
alias gall="git add --all"
alias gco="git checkout"
alias gp="git push"

# NON-OSX aliases
if [[ -z $(uname -a | grep -o Darwin) ]]; then
  alias ls='ls --color=auto'
fi
