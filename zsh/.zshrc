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
  thefuck
  tmux
  web-search
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-vi-mode
)

# Source Oh My Zsh script
source $ZSH/oh-my-zsh.sh

# Using neovim for vi/vim
alias vi='nvim'
alias vim='nvim'

# Using alternative tools for file viewing
alias c='bat'
alias ls='eza'
alias la='eza -a'
alias l='eza -al'
alias ll='eza -al'

# Add fzf completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add catpuccin theme to fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# SDKMAN (Software Development Kit Manager) initialization
# Note: This should be at the end of the file for SDKMAN to initialize properly.
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

