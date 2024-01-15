export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR="vim"
ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git vi-mode zsh-autosuggestions z)

setopt correct
setopt autocd
autoload -Uz zmv

if [ -d "/usr/local/texlive/2023/bin/x86_64-linux" ]; then
	export INFOPATH=/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH
	export MANPATH=/usr/local/texlive/2023/texmf-dist/doc/man:/usr/local/man:$MANPATH
	export PATH=/usr/local/texlive/2023/bin/x86_64-linux:$PATH
fi

if command -v nvm > "/dev/null" 2>&1; then
        export NVM_DIR="$HOME/.nvm"
fi

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
[ -f "$HOME/.aliases.sh" ] && . "$HOME/.aliases.sh"
[ -f "$ZSH/oh-my-zsh.sh" ] && . "$ZSH/oh-my-zsh.sh"
