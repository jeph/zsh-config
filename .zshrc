# Set up zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Add plugins via zinit
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Load completions
autoload -Uz compinit && compinit
# Replay all cached completions as recommended by the documentation
zinit cdreplay -q

# Keybindings
# Use Ctrl + P (prev) and Ctrl + N (next) to search through history
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History settings
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
# Use case-insensitive completions
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# Display ls colors in completions
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# Disable default zsh completion menu
zstyle ':completion:*' menu no
# Display directory preview in completions
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Integrate with fzf
eval "$(fzf --zsh)"

# Set up fnm for managing node versions
eval "$(fnm env --use-on-cd --shell zsh)"

alias pn=pnpm
alias ls=lsd
alias cat=bat

# Set up zoxide and replace cd with zoxide
eval "$(zoxide init --cmd cd zsh)"

# Set up starship prompt
eval "$(starship init zsh)"
