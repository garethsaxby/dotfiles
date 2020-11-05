# Configuring oh-my-zsh

# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/gsaxby/.oh-my-zsh"
ZSH_THEME="agnoster"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git osx aws iterm2)

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

# Aliases
alias ping='prettyping --nolegend'
alias vim='nvim'
alias vi='vim'

# PyEnv Setup
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# GoEnv Setup
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
