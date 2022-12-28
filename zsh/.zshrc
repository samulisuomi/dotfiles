# ~/.zshrc

alias g="git"
alias gc="cat ~/.gitconfig"
alias gitc="gc"
alias h="history"

# Set up brew (prerequisite: https://brew.sh/)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Set up nvm (prerequisite: https://github.com/nvm-sh/nvm#installation-and-update)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set up rbenv (prerequisite: brew install rbenv)
eval "$(rbenv init -)"

# Set tab completion behavior:
autoload -Uz compinit; compinit
zstyle ':completion:*' menu select

# Bash-style opt+left/right/del behavior on paths by dropping "/" from the list:
export WORDCHARS=$(echo $WORDCHARS | sed 's/\///')

# Configure and set sindresorhus/pure as the prompt:
fpath+=("$(brew --prefix)/share/zsh/site-functions")
# Hack to prevent extra newlines (https://github.com/sindresorhus/pure/issues/509#issuecomment-641001784):
print() {
  [ 0 -eq $# -a "prompt_pure_precmd" = "${funcstack[-1]}" ] || builtin print "$@";
}
autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL=$
prompt pure
# # Hack to have the whole prompt on a single line (https://github.com/sindresorhus/pure/issues/228#issuecomment-299425799):
# prompt_newline='%666v'
# PROMPT=" $PROMPT"
