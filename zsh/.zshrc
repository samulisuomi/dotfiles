# ~/.zshrc

alias g="git"
alias gc="cat ~/.gitconfig"
alias gitc="gc"
alias h="history"

# Prerequisite: https://github.com/nvm-sh/nvm#installation-and-update
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Prerequisite: brew install rbenv
eval "$(rbenv init -)"

# Set prompt to pure
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL=$
prompt pure
