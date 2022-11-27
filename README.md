# zsh config
This is my personal zsh config. I made this so I don't have to learn
how to set up zsh again every time I get a new computer. Feel free to 
use it if you'd like. Note: powerlevel10k has been removed as I'm now
using [warp](https://www.warp.dev/) terminal.
![Command Line Image Example](cmdline.png)
## Setup
Setup is specific to macOS
### Basic zsh and Oh My Zsh installation
Install zsh (Consider installing all packages and applications using a `Brewfile`
such as [this](https://github.com/jeph/brewfile))
```
brew install zsh
```
Set zsh as the default shell in macOS
```
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)
```
Install Oh My Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### Install themes and plugins
Install zsh-autosuggestions
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Install zsh-syntax-highlighting
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
### .zshrc setup
Clone the repo and copy `.zshrc` file for Oh My Zsh to access. 
You'll have to copy again if you ever change the `.zshrc` file here.
```
git clone https://github.com/jeph/zsh-config.git
cd zsh-config
cp $PWD/.zshrc $HOME/.zshrc
source $HOME/.zshrc
```
The background color in the photo is `#292E3C`
