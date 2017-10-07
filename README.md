# dotfiles
These are my "dotfiles" 

# Installation

Clone a copy of the repo into your home folder.

```
cd ~
git clone https://github.com/bwmarrin/dotfiles.git .files
```

Now link the dotfiles into your home folder. You can link only the 
ones you need. 

```
cd ~
ln -s .files/.zshrc .
ln -s .files/.vimrc .
ln -s .files/.gitconfig .
ln -s .files/.vim .
cd .files/.vim
git submodule init
git submodule update
cd ~
```
