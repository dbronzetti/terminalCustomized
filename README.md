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

#Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
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
git config --global alias.ca "commit --amend"
```
```
git config --global core.editor "mvim -f"

```
---
# FIX git prompt (:|✔)
In the `/usr/local/opt/zsh-git-prompt/zshrc.sh` file replace this:
```
if [ -n "$__CURRENT_GIT_STATUS" ]; then
```
for this:
```
 if [ "$GIT_BRANCH" != ":" ]; then
```
---
# Useful links
* [Source](http://stackoverflow.com/questions/2411031/how-do-i-clone-into-a-non-empty-directory)
* [VimPLug](https://github.com/junegunn/vim-plug)
