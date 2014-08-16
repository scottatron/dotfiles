alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias be="bundle exec"
alias mate="mvim"

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
  alias ga="git add"
  alias gall="git add --all"
  alias gb="git branch"
  alias gc="git commit"
  alias gco="git checkout"
  alias gd="git diff"
  alias gdc="git diff --cached"
  alias gf="git fixws"
  alias gp="git push"
  alias gs="git status"
  __git_complete ga _git_add
  __git_complete gc _git_commit
  __git_complete gco _git_checkout
  __git_complete gd _git_diff
  __git_complete gp _git_push
  __git_complete gb _git_branch
fi


# ls colours
if [[ -z $(uname -a | grep -o Darwin) ]]; then
  # gnu ls
  alias ls='ls --color=auto'
else
  # bsd ls (osx)
  alias ls='ls -G'
fi

# VirtualBox
alias vb="VBoxManage"
