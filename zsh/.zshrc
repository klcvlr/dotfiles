# ~/.zshrc

export PATH="$HOME/.lkutils/bin:$PATH"

# Path to Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Configuration for starship prompt
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# Configuration for Volta, the JavaScript Tool Manager

# Initialize starship prompt
eval "$(starship init zsh)"

# Oh My Zsh plugins configuration
plugins=(
  aws
  docker
  docker-compose
  git
  jenv
  kubectl
  minikube
  sdk
  tmux
  z
)

# Source Oh My Zsh script
source $ZSH/oh-my-zsh.sh

# Using neovim for vi/vim
alias vi='nvim'
alias vim='nvim'

# Using alternative tools for file viewing
alias c='bat'
alias ls='exa'
alias la='exa -a'
alias l='exa -al'
alias ll='exa -al'

# SDKMAN (Software Development Kit Manager) initialization
# Note: This should be at the end of the file for SDKMAN to initialize properly.
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
