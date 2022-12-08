# dotfiles
前提：
- Use zsh
- Use Neovim

## Neovim
### pyenv、virtualenv導入
```
# 導入
brew update
brew install pyenv

pyenv install 3.x.x
pyenv install 2.x.x

```
https://github.com/pyenv/pyenv

```
# virtualenv導入、nvim用python環境設定
brew install pyenv-virtualenv
pyenv virtualenv 3.x.x nvim-python3
pyenv virtualenv 2.x.x nvim-python2

pyenv global nvim-python3
pip install pynvim

pyenv global nvim-python2
pip install pynvim
```

```
# nvim導入
brew install noevim
```
