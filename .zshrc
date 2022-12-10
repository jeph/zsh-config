# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Enable case insensitive auto complete.
CASE_SENSITIVE="false"

plugins=(
  extract
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'

source $ZSH/oh-my-zsh.sh
