#!/bin/sh
if [ `echo $SHELL | grep 'bash'` ]; then
  ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
  ln -sf ~/dotfiles/.bashrc ~/.bashrc
fi

if [ `echo $SHELL | grep 'zsh'` ]; then
  ln -sf ~/dotfiles/.zshrc ~/.zshrc
fi

NVIM_DIR=~/.config/nvim
if [ ! -e ${NVIM_DIR} ]; then
  mkdir -p $NVIM_DIR
fi

ZSH_DIR=~/.config/zsh
if [ ! -e ${ZSH_DIR} ]; then
  mkdir -p $ZSH_DIR
fi

# gitプロンプト+補完スクリプトdownload
if [ ! -e ${ZSH_DIR}/git-prompt.sh ]; then
  curl -o ${ZSH_DIR}/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi

if [ ! -e ${ZSH_DIR}/git-completion.bash ]; then
  curl -o ${ZSH_DIR}/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
fi

if [ ! -e ${ZSH_DIR}/_git ]; then
  curl -o ${ZSH_DIR}/_git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
fi

#ln -sf ~/dotfiles/.vimrc ~/.vimrc
#ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vimrc ${NVIM_DIR}/init.vim
ln -sf ~/dotfiles/nvim/dein.toml ${NVIM_DIR}/dein.toml
ln -sf ~/dotfiles/nvim/ftdetect ${NVIM_DIR}/ftdetect
ln -sf ~/dotfiles/nvim/LanguageClient-neovim/ ${NVIM_DIR}/LanguageClient-neovim
ln -sf ~/dotfiles/.vrapperrc ~/.vrapperrc
ln -sf ~/dotfiles/colors ${NVIM_DIR}/colors

