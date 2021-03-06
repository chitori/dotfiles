source /usr/local/etc/bash_completion.d/.git-prompt.sh

alias ls='ls -G'
alias la='ls -la'
export EDITOR=/usr/local/bin/nvim

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#alias vim='env_LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#alias vi='env LANG=ja_JP.UTF-8 /usr/local/bin/nvim "$@"'
#alias vim='env_LANG=ja_JP.UTF-8 /usr/local/bin/nvim "$@"'
alias vi='nvim'
alias vim='nvim'
alias ctags="`brew --prefix`/bin/ctags"
export PS1='\[\e[1;31m\]\u@\h:\[\e[1;33m\]${PWD}\[\e[1;36m\]$(__git_ps1 " (%s)") \[\e[1;31m\]$\[\e[m\] '


