# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Oh My Zsh config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Load Powerlevel10k config if available
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Plugins
plugins=(
  git
  docker
  kubectl
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  history
)

source $ZSH/oh-my-zsh.sh

# Language
export LANG=en_US.UTF-8

# Editor
export EDITOR="vim"
export VISUAL="vim"

# History configuration
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

# Keybindings
bindkey '^R' history-incremental-search-backward

# Aliases
alias k="kubectl"
alias d="docker"
alias dc="docker compose"
alias gst="git status"
alias gl="git pull"
alias gp="git push"
alias ll="ls -lah"
alias cls="clear"

# Powerlevel10k configuration (reconfirm)
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

