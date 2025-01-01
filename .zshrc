# Set up fnm for managing node versions
eval "$(fnm env --use-on-cd --shell zsh)"

alias pn=pnpm
alias ls=lsd

# Set up zoxide and replace cd with zoxide
eval "$(zoxide init --cmd cd zsh)"
