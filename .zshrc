export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH="$PATH:$HOME/.local/bin"
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export MANPATH="/usr/local/man:$MANPATH"

# export ZSH_TMUX_AUTOSTART=true
# export ZSH_TMUX_AUTOSTART_ONCE=true

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

COMPLETION_WAITING_DOTS="true"

plugins=(
  git 
  sudo 
  vi-mode 
  tmux 
  zsh-autosuggestions 
  zsh-syntax-highlighting
  aliases
)

source $ZSH/oh-my-zsh.sh

alias q="exit"
alias l="exa -a --icons"
alias ls="exa --icons"
alias ll="exa -lah --icons"
alias tm="tmux"

eval "$(starship init zsh)"
