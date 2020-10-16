# zsh config
This is my personal zsh config. I made this so I don't have to manually
set up zsh every time I get a new computer. Feel free to use it if 
you'd like.
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
Install Powerline fonts
```
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```
### .zshrc setup
Clone the repo and symlink `.zshrc` file for Oh My Zsh to access. 
Changes to the file in this directory are linked to the file in the
`$HOME` directory. You'll have to link again if you ever move the 
`.zshrc` file.
```
git clone git@github.com:jeph/zsh-config.git
cd zsh-config
ln -s $PWD/.zshrc $HOME/.zshrc
source $HOME/.zshrc
```
