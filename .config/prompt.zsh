# Load git prompt
alias python="python3"
source "/opt/homebrew/opt/zsh-git-prompt/zshrc.sh"
PROMPT='%n@%m | %~%b$(git_super_status) >>$ '

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

# zsh Completions
autoload -Uz compinit && compinit
rm ~/.zcompdump
