# Terminal Customized
This repository contains the basic profile configuration for my terminals after pcs reinstalling.

# How to clone a repo into an existing directory
```
git init
git remote add origin https://github.com/dbronzetti/terminalCustomized.git
git fetch
git checkout -t origin/master
```

# Install MacVim and more
```
brew install macvim the_silver_searcher
brew install --cask iterm2
```

# Symlink configs
```
ln -s ~/.terminalCustomized/.vimrc ~/.vimrc
ln -s ~/.terminalCustomized/.profile ~/.profile
ln -s ~/.terminalCustomized/.bashrc ~/.bashrc
ln -s ~/.terminalCustomized/.bash_profile ~/.bash_profile
ln -s ~/.terminalCustomized/.config/ ~/.config

vim +PluginInstall +qall
```

---
# Other tips
  
Here are some other useful commands I like to use:
Pretty ```git lg```

```
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
```

```
git config --global alias.cm "commit -m"
```
```
git config --global core.editor "mvim -f"

```
---
# Useful links
* [Source](http://stackoverflow.com/questions/2411031/how-do-i-clone-into-a-non-empty-directory)
* [VimPLug](https://github.com/junegunn/vim-plug)
