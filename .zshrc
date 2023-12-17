export INFOPATH=/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH
export LANG=en_US.UTF-8
export MANPATH=/usr/local/texlive/2023/texmf-dist/doc/man:/usr/local/man:$MANPATH
export NVM_DIR="$HOME/.nvm"
export PATH=/usr/local/texlive/2023/bin/x86_64-linux:$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 13

DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

xset r rate 150 125
set -o vi

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
[ -f "$HOME/.aliases" ] && . "$HOME/.aliases"
[ -f "$ZSH/oh-my-zsh.sh" ] && . "$ZSH/oh-my-zsh.sh"
