# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Enable case insensitive auto complete.
CASE_SENSITIVE="false"

plugins=(
  extract
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# git setup
git config --global user.name "Jeph Liu"
git config --global user.email jephliu@jeph.io

# Common git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.uncommit 'reset HEAD~1'

source $ZSH/oh-my-zsh.sh

# Configure nvm
# Assumes script install as homebrew install is not supported by the authors
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Conda initialize
# Assumes homebrew install with miniforge
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
