# ~/.bash_profile

alias g="git"
alias gc="cat ~/.gitconfig"
alias gitc="gc"

# brew install bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion

  complete -o default -o nospace -F _git g;
fi

# https://github.com/nvm-sh/nvm#installation-and-update
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# brew install rbenv
eval "$(rbenv init -)"
