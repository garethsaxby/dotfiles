# Configuring oh-my-zsh

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
export ZSH="/Users/gsaxby/.oh-my-zsh"
ZSH_THEME="agnoster"
DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git macos aws iterm2)

# Execute oh-my-zsh
source $ZSH/oh-my-zsh.sh

# User configuration
# Should happen after executing oh-my-zsh

# iTerm2 Shell Integration
if [ ! -e "${HOME}/.iterm2_shell_integration.zsh" ]; then
  curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh
  chmod 700 ~/.iterm2_shell_integration.zsh
fi
source "${HOME}/.iterm2_shell_integration.zsh"

# Environment Variables
export LANG=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8
export EDITOR='nvim'
export VISUAL='nvim'

# Aliases
alias ping='prettyping --nolegend'
alias vim='nvim'
alias vi='vim'

