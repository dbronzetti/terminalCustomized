export CONFIGURATIONS=~/.config/

source $CONFIGURATIONS/env.zsh
source $CONFIGURATIONS/prompt.zsh
source $CONFIGURATIONS/alias.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export JT_OPENAPI=/Users/damo/Documents/projects/jobandtalent/jt-openapi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

mkdir -p ~/.vim/backup_files ~/.vim/swap_files ~/.vim/undo_files
