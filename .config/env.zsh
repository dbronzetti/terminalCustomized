export EDITOR=mvim
export AWS_PROFILE=experimental
export AWS_REGION=eu-west-1 # (only necessary to launch new instances)
export DISABLE_SPRING="true"

# Setting PATH for brew
PATH="/opt/homebrew/bin:${PATH}"

export PATH 

# Adding pyenv to PATH for python versioning control
eval "$(pyenv init -)"
