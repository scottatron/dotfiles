alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias be="bundle exec"


# Git aliases
# Check for Git completion functions first
if $(type __git_complete 2>&1 | grep -q 'not found'); then
  _git_completion="${HOME}/.bash/git-completion.bash"
  if [[ ! -f $_git_completion ]]; then
    git_version=$(git --version | awk '{print $3}')
    url="https://raw.githubusercontent.com/git/git/v${git_version}/contrib/completion/git-completion.bash"
    echo "No Git completion found, installing from $url"
    curl -sLo $_git_completion $url
  fi
  source $_git_completion
fi
if $(type __git_complete 2>&1 | grep -q 'not found'); then
  echo "No Git completion found, skipping Git aliases"
else
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
fi


# NON-OSX aliases
if [[ -z $(uname -a | grep -o Darwin) ]]; then
  alias ls='ls --color=auto'
fi

# VirtualBox
alias vb="VBoxManage"
