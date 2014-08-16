BASE16_SCHEME="brewer"
BASE16_VIM_SCHEME="default"
BASE16_SHELL="$HOME/.bash/base16/base16-$BASE16_SCHEME.dark.sh"
BASE16_VIM="$HOME/.bash/base16/base16-$BASE16_VIM_SCHEME.dark.sh"

# Wrapper function for terminal vim which loads the base16 scheme for vim and reverts it to the shell scheme on exit
function base16vim {
  source $BASE16_VIM
  $(which vim) "$@"
  source $BASE16_SHELL
}
alias vim="base16vim"
