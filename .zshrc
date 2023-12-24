export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 13

DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

set -o vi
setopt correct
setopt autocd

# for better typing
xset r rate 150 125

if tex 2> /dev/null 1> /dev/null; then
	export INFOPATH=/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH
	export MANPATH=/usr/local/texlive/2023/texmf-dist/doc/man:/usr/local/man:$MANPATH
	export PATH=/usr/local/texlive/2023/bin/x86_64-linux:$PATH
fi

if nvm 2> /dev/null 1> /dev/null; then
	export NVM_DIR="$HOME/.nvm"
fi

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
[ -f "$HOME/.aliases" ] && . "$HOME/.aliases"
[ -f "$ZSH/oh-my-zsh.sh" ] && . "$ZSH/oh-my-zsh.sh"
