export EDITOR=mvim
export AWS_PROFILE=experimental
export AWS_REGION=eu-west-1 # (only necessary to launch new instances)
export DEVCLOUD_OWNER="dbronzetti-jt" # ENV var for accessing DevCloud tool 
export BUNDLE_GEM__FURY__IO="LkcUdtYsN1ArzyvkxRVe"
export HOMEBREW_GITHUB_API_TOKEN="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"
export DEVKIT_SECRETS_PASSWORD="8NkPdgDgqXjkOiwQ"

# Setting PATH for brew
PATH="/opt/homebrew/bin:${PATH}"

# Setting PATH for devcloud
PATH="/Users/damo/Documents/projects/jobandtalent/devcloud/bin:${PATH}"

# Setting PATH for devkit
PATH="/Users/damo/Documents/projects/jobandtalent/devkit/bin:${PATH}"
export PATH 

# Adding pyenv to PATH for python versioning control
eval "$(pyenv init -)"
