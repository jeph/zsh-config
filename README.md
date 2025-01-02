# zsh config

This is my personal zsh config. I made this so I don't have to learn
how to set up zsh again every time I get a new computer. Feel free to
use it if you'd like, but keep in mind some aspects of the config are
specific to my preferences or workflows.

![Command Line Image Example](cmdline.png)

## Setup

Setup is specific to macOS, but other Unix-like systems should be similar.

### Basic zsh and Oh My Zsh installation

Install zsh (Consider installing all packages and applications using a `Brewfile`
such as [this](https://github.com/jeph/brewfile))

```zsh
brew install zsh
```

Set zsh as the default shell in macOS. This isn't necessary for recent
macOS versions.

```zsh
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)
```

## Dependencies

This `.zshrc` assumes a few dependencies are installed. I'd recommend installing 
dependencies using a `Brewfile` and [Homebrew](https://brew.sh/) like the one in 
[this repository](https://github.com/jeph/brewfile) if you're on macOS. A (potentially)
non-exhaustive list of dependencies is below in case you want to install them manually
or are on Linux or WSL:

- [Starship - A minimal prompt written in rust](https://starship.rs/)
- [fzf - A command-line fuzzy finder](https://github.com/junegunn/fzf)
- [zoxide - A smarter cd command](https://github.com/ajeetdsouza/zoxide)
- [lsd - A modern ls command](https://github.com/lsd-rs/lsd)
- [bat - A cat(1) clone with wings](https://github.com/sharkdp/bat)

### .zshrc setup

Clone the repo and copy `.zshrc` file for Oh My Zsh to access.
You'll have to copy again if you ever change the `.zshrc` file here.

```zsh
git clone https://github.com/jeph/zsh-config.git
cd zsh-config
cp $PWD/.zshrc $HOME/.zshrc
source $HOME/.zshrc
```

## Additional Setup (Optional)

### Set up git aliases

```zsh
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
```
