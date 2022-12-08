# dotfiles
前提：
- Use zsh
- Use Neovim

## Neovim
### pyenv、virtualenv導入
```
# pyenv導入
brew update
brew install pyenv

pyenv install 3.x.x
pyenv install 2.x.x

```
https://github.com/pyenv/pyenv

```
# virtualenv導入、nvim用python環境設定
pyenv global 3.x.x
pip install virtualenv
virtualenv -p python3 ~/nvim-python3

pyenv global 2.x.x
virtualenv -p python ~/nvim-python2

pyenv global system
```
