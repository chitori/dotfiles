# git-prompt
source ~/.config/zsh/git-prompt.sh

# git-completion
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

alias ls='ls -G'
alias la='ls -la'
alias vi='nvim'
alias vim='nvim'

export EDITOR=/usr/local/bin/nvim

export LANG=ja_JP.UTF-8

# pyenvで導入したpython機能をパスに通す
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# プロンプトにgitブランチ名を表示
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

PROMPT="%{[1;31m%}%n@%m:%{[1;33m%}%d%{[1;36m%}\${vcs_info_msg_0_} %{[1;31m%}$ %{[m%}"
zstyle ':vcs_info:git:*' formats '(%b)'

