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

#ln -sf ~/dotfiles/.vimrc ~/.vimrc
#ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vimrc ${NVIM_DIR}/init.vim
ln -sf ~/dotfiles/nvim/dein.toml ${NVIM_DIR}/dein.toml
ln -sf ~/dotfiles/nvim/ftdetect ${NVIM_DIR}/ftdetect
ln -sf ~/dotfiles/nvim/LanguageClient-neovim/ ${NVIM_DIR}/LanguageClient-neovim
ln -sf ~/dotfiles/.vrapperrc ~/.vrapperrc
ln -sf ~/dotfiles/colors ${NVIM_DIR}/colors

