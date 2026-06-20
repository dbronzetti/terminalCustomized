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
brew install zsh-git-prompt

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
In the `/opt/homebrew/opt/zsh-git-prompt/zshrc.sh` file replace this:
```
if [ -n "$__CURRENT_GIT_STATUS" ]; then
```
for this:
```
 if [ "$GIT_BRANCH" != ":" ]; then
```

To include repo name add the following function:
```
git_remote_full_name() {
  if git rev-parse --is-inside-work-tree &>/dev/null; then
    local remote_url=$(git config --get remote.origin.url 2>/dev/null | awk -F'[:/]' '{print $(NF-1)"/"$NF}' | sed 's/\.git$//')
    if [ -n "$remote_url" ]; then
      # Extrae las últimas dos secciones de la URL (usuario/proyecto)
      echo "$(echo "$remote_url"):"
    else
      # Fallback por si el repositorio no tiene remoto configurado
      echo "$(basename $(git rev-parse --show-toplevel 2>/dev/null)):"
    fi
  fi
}
```

Then in the ```git_super_status```function modifiy the following:
```
 STATUS="$ZSH_THEME_GIT_PROMPT_PREFIX
```
for this:
```
STATUS="$ZSH_THEME_GIT_PROMPT_PREFIX%{$fg_bold[green]%}$(git_remote_full_name)$ZSH_THEME_GIT_PROMPT_BRANCH$GIT_BRANCH%{${reset_color}%}"
```
---
# Useful links
* [Source](http://stackoverflow.com/questions/2411031/how-do-i-clone-into-a-non-empty-directory)
* [VimPLug](https://github.com/junegunn/vim-plug)
