# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/go/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export EDITOR=nvim
export MANPATH="/usr/local/man:$MANPATH"

export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct

COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git sudo vi-mode tmux example zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


alias q="exit"
alias l="exa -a --icons"
alias ls="exa --icons"
alias ll="exa -lah --icons"

#Display random gifs
kitten icat --align left $(find $HOME/.config/neofetch/gifs/ -name "*.gif" | sort -R | head -1)

eval "$(starship init zsh)"
