# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists    
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH="/usr/local/bin:$PATH"

#
# CUSTOM SETUP
#

source ~/.git-prompt.sh

# git auto-complete
source ~/.git-completion.bash

# ssh auto-complete
source ~/.ssh-completion.bash

# Custom commands
source ~/.builtins

# everyday shortcuts
source ~/.aliases

# CLI utilities
#source ~/.utils

# completions for all those aliases
source ~/.alias-completion.sh

# Venv and Pip setup
# source ~/.pyconfig

# personalised commands that don't go into the repo
# source ~/.extra

# Set up command prompt
export PS1='$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1;
  if [ "$?" -eq "0" ]; then
    # @4 - Clean repository - nothing to commit
    echo "'$Green'"$(__gitrepo) "("$(__git_ps1 "%s)")'$Color_Off';
  else
    # @5 - Changes to working tree
    echo "'$Red'"$(__gitrepo) "{"$(__git_ps1 "%s}")'$Color_Off';
  fi)\$ ";
else
  # @2 - Prompt when not in GIT repo
  echo "'$Yellow$PathFull$Color_Off'\$ ";
fi)'

