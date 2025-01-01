# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Enable case insensitive auto complete.
CASE_SENSITIVE="false"

plugins=(
  extract
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Configure nvm
# Assumes script install as homebrew install is not supported by the authors
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias pn=pnpm

# Set up zoxide and replace cd with zoxide
eval "$(zoxide init --cmd cd zsh)"
