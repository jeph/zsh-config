# zsh config
This is my personal zsh config. I made this so I don't have to manually
set up zsh every time I get a new computer. Feel free to use it if 
you'd like.
![Command Line Image Example](cmdline.png)
## Setup
Setup is specific to macOS
### Basic zsh and Oh My Zsh installation
Install zsh
```
brew install zsh
chsh -s /usr/local/bin/zsh
```
Install Oh My Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### Install plugins
Install zsh-autosuggestions
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Install zsh-syntax-highlighting
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Install powerlevel10k
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
### .zshrc setup
Clone the repo and symlink `.zshrc` file for Oh My Zsh to access. 
Changes to the file in this directory are linked to the file in the
`$HOME` directory. You'll have to link again if you ever move the 
`.zshrc` file.
```
git clone https://github.com/jeph/zsh-config.git
cd zsh-config
ln -s $PWD/.zshrc $HOME/.zshrc
source $HOME/.zshrc
```
### Configure theme
Automatic font installation only works in iTerm
```
p10k configure
```
The background color in the photo is `#2c3e50`
