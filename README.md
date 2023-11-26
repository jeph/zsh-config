# zsh config
This is my personal zsh config. I made this so I don't have to learn
how to set up zsh again every time I get a new computer. Feel free to 
use it if you'd like, but keep in mind some aspects of the config, such 
as the `git` setup are specific to me. 

![Command Line Image Example](cmdline.png)
## Setup
Setup is specific to macOS
### Basic zsh and Oh My Zsh installation
Install zsh (Consider installing all packages and applications using a `Brewfile`
such as [this](https://github.com/jeph/brewfile))
```zsh
brew install zsh
```
Set zsh as the default shell in macOS
```zsh
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)
```
Install Oh My Zsh
```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### Install themes and plugins
Install zsh-autosuggestions
```zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Install zsh-syntax-highlighting
```zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Install powerlevel10k
```zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
### .zshrc setup
Clone the repo and copy `.zshrc` file for Oh My Zsh to access. 
You'll have to copy again if you ever change the `.zshrc` file here.
```zsh
git clone https://github.com/jeph/zsh-config.git
cd zsh-config
cp $PWD/.zshrc $HOME/.zshrc
source $HOME/.zshrc
```
### Configure powerlevel10k
Automatic font installation only works in iTerm
```zsh
p10k configure
```
Note: powerlevel10k is not well supported in [Warp](https://www.warp.dev/)
terminal yet, but is included for iTerm2 and macOS terminal usecases.
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
