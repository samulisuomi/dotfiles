# ~/.bash_profile

alias g="git"
alias gc="cat ~/.gitconfig"
alias gitc="gc"

# Prerequisite: brew install bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion

  # TODO: Find __git_wrap__git_main automatically
  # For debugging if __git_wrap__git_main changes: complete -p git
  complete -o default -o nospace -F __git_wrap__git_main g;
fi

# Prerequisite: https://github.com/nvm-sh/nvm#installation-and-update
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Prerequisite: brew install rbenv
eval "$(rbenv init -)"

# TODO: Make the path dynamic:
# Set bash prompt
# if [ -f /path-to/dotfiles/bash/prompt.sh ]; then
#   source /path-to/dotfiles/bash/prompt.sh
# fi
