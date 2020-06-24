export PS1="\W [\u] $ "

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=/usr/local/bin:$PATH

# export PATH=/usr/bin:$PATH # messing with AWS CLI tools??

# this was trying to source nvm.sh from /usr/local/Cellar/nvm/0.34.0/nvm.sh
# source $(brew --prefix nvm)/nvm.sh
source ~/.nvm/nvm.sh

alias python='python3'
alias pip='pip3'

#
# EDITORS
#
export EDITOR="$(which subl 2>/dev/null || echo nano)"
export GIT_EDITOR="${EDITOR/subl/subl --wait}"
export VISUAL="${EDITOR}"

# export PATH="/usr/local/opt/postgresql@10/bin:$PATH"

source ~/.git-completion.bash

# Customize bash-git-prompt settings and then source it
GIT_PROMPT_ONLY_IN_REPO=1 # Use the default prompt when not in a git repo.
# GIT_PROMPT_FETCH_REMOTE_STATUS=0 # Avoid fetching remote status
# GIT_PROMPT_SHOW_UPSTREAM=0 # Don't display upstream tracking branch
GIT_SHOW_UNTRACKED_FILES=normal # Don't count untracked files (no, normal, all)
# GIT_PROMPT_THEME=Solarized
# GIT_PROMPT_THEME=Custom

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Docker bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# if [ -f $(brew --prefix)/etc/bash_completion ]; then
# . $(brew --prefix)/etc/bash_completion
# fi

# Autocompletion (for thefuck's sake)
eval $(thefuck --alias)
export PATH=/Users/melaniemohn/.pyenv/versions/3.7.2/bin:$PATH
export PATH=/Users/melaniemohn/.pyenv/versions/3.7.2/bin:$PATH
