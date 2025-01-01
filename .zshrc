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

# Set up fnm for managing node versions
eval "$(fnm env --use-on-cd --shell zsh)"

alias pn=pnpm
alias ls=lsd

# Set up zoxide and replace cd with zoxide
eval "$(zoxide init --cmd cd zsh)"
