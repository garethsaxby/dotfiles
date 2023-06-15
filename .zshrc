# Configuring oh-my-zsh
if [[ "${SHELL}" == "/opt/homebrew/bin/zsh" ]]; then
  export PATH=$HOME/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/opt/homebrew/opt/gnu-sed/libexec/gnubin:/opt/homebrew/opt/gnu-tar/libexec/gnubin:/opt/homebrew/opt/gawk/libexec/gnubin:$PATH
elif [[ "${SHELL}" == "/home/linuxbrew/.linuxbrew/bin/zsh" ]]; then
  export PATH=$HOME/bin:/home/linuxbrew/.linuxbrew/bin:$PATH
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git macos aws iterm2 terraform)

# Execute oh-my-zsh
source "$ZSH/oh-my-zsh.sh"

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
export HOMEBREW_NO_ANALYTICS=1

# NVM
# Disabled due to taking a long time for startup
#export NVM_DIR="$HOME/.nvm"
#[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Aliases
alias ping='prettyping --nolegend'
alias vim='nvim'
alias vi='vim'

# Includes for untracked settings
INCLUDE_FILE="${HOME}/.zshrc_includes/work"
if [ -e "${INCLUDE_FILE}" ]
then
  source "${INCLUDE_FILE}"
fi

