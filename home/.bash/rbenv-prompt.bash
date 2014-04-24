# prompt with ruby version
# rbenv version | sed -e 's/ .*//'
__rbenv_ps1 ()
{
  rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
  printf "|$rbenv_ruby_version|"
}

# Load git-prompt.sh from Homebrew if it exists
if [[ ! -z $(which brew) ]]; then
  GIT_PROMPT_SH="$(brew --prefix)/etc/bash_completion.d/git-prompt.sh"
  if [[ -f $GIT_PROMPT_SH ]]; then
    . $GIT_PROMPT_SH
  fi
fi

# prompt with git && rbenv
if [ ! -z $GIT_PROMPT_SH ] && [ -f `which rbenv` ]; then
  export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w$(__git_ps1) $(__rbenv_ps1) \n\[\033[01;34m\]\$\[\033[00m\] '
elif [ ! -z $GIT_PROMPT_SH ]; then
  export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w$(__git_ps1) \n\[\033[01;34m\]\$\[\033[00m\] '
elif [ `which rbenv` ]; then
  export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w $(__rbenv_ps1) \n\[\033[01;34m\]\$\[\033[00m\] '
else
  export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w \n\[\033[01;34m\]\$\[\033[00m\] '
fi

# source https://gist.github.com/kyanny/1668822