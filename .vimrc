"neovim用GUI設定(GUIといいつつターミナルから実行した時も入っちゃう)
"if has('gui_running')
"  if filereadable(expand('~/.gvimrc'))
""    source ~/.gvimrc " この分岐だとターミナルからnvim呼んだ時もgvimrc読んで
""    行数かなんかの設定で画面がバグるからとりあえずgvimrc読むのやめる
"  endif
"else
"endif

" onivimかどうかで分岐したい時はこう
"if exists('g:gui_oni')
    " Statements here
"endif

set ch=2    " Make command line two lines high

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

set mousehide  " Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

"set t_Co=256
"let g:twilight_use_iTerm_colors = 1
" twilightカラースキーマがGUI専用っぽかったのでとりあえず
colorscheme jellybeans
"colorscheme twilight256
syntax on

:filetype on

" ステータスラインの表示 (プラグイン依存があるため最後尾に記述)
set statusline=%<     " 行が長すぎるときに切り詰める位置
set statusline+=[%n]  " バッファ番号
set statusline+=%m    " %m 修正フラグ
set statusline+=%r    " %r 読み込み専用フラグ
set statusline+=%h    " %h ヘルプバッファフラグ
set statusline+=%w    " %w プレビューウィンドウフラグ
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}  " fencとffを表示
set statusline+=%y    " バッファ内のファイルのタイプ
set statusline+=\     " 空白スペース
set statusline+=%=    " 左寄せ項目と右寄せ項目の区切り
set statusline+=%{fugitive#statusline()}  " Gitのブランチ名を表示
set statusline+=\ \   " 空白スペース2個
set statusline+=%1l   " 何行目にカーソルがあるか
set statusline+=/
set statusline+=%L    " バッファ内の総行数
set statusline+=,
set statusline+=%c    " 何列目にカーソルがあるか
set statusline+=%V    " 画面上の何列目にカーソルがあるか
set statusline+=\ \   " 空白スペース2個
set statusline+=%P    " ファイル内の何％の位置にあるか


set nowrap
set noswapfile
set hlsearch
set ruler
set number
set wildmenu
set showcmd
"set imd


set incsearch
set ignorecase
set smartcase

set nocompatible

set backupdir=$HOME/Applications/vimbackup
set directory=$HOME/Applications/vimbackup
set undodir=$HOME/Applications/vimbackup/undo

set autoindent

set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set nf=hex
set mouse=a
"keep buffer
set hidden

"inoremap [ []<left>
"inoremap ( ()<left>
"inoremap { {}<left>

nmap <Esc><Esc> /nohlsearch<CR><ESC>

" very magicをデフォルトに設定
nmap / /\v

"スクロール
noremap <Space>j <C-f>
noremap <Space>k <C-b>
noremap <Space>l <C-d>
noremap <Space>h <C-u>


"カーソル移動変更（挿入モード）
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"外部クリップボードペースト
nnoremap <Space>y "*y
vnoremap <Space>y "*y

"外部クリップボードペースト
nnoremap <Space>p "*p
nnoremap <Space>P "*P
vnoremap <Space>p "*p
vnoremap <Space>P "*P

"括弧移動
"nnoremap ] %
"nnoremap [ %
"vnoremap ] %
"vnoremap [ %

"タブ分割
"nnoremap ss :sp<CR>
"nnoremap sv :vsp<CR>
nnoremap ss :new<CR>
nnoremap sv :vnew<CR>
"タブ変更
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sw <C-w>w
"タブ移動
nnoremap sH <C-w>H
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
"新規タブ
nnoremap st :tabnew<CR>

" ファイル作成時shebangを自動挿入
augroup SetShebang
    autocmd! SetShebang
    autocmd BufNewFile *.sh 0put =\"#!/bin/bash\"|$
    autocmd BufNewFile *.rb 0put =\"# -*- encoding: UTF-8 -*-\"|$
    autocmd BufNewFile *.py 0put =\"# -*- coding: utf-8 -*-\"|$
augroup END

"カレントディレクトリ設定
"nnoremap :cdg :cd %:h
"nnoremap :cdc :cd %
"<Tab>
"inoremap <C-h> <C-i>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
"set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
"
" dein自体の自動インストール
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath

" プラグイン読み込み＆キャッシュ作成
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

" 旧dein設定様子見で残す
" Required:
"if dein#load_state('~/.cache/dein')
"  call dein#begin('~/.cache/dein')
"  
"  " Let dein manage dein
"  " Required:
"  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
"  
"  " Add or remove your plugins here:
"  "call dein#add('Shougo/neosnippet.vim')
"  "call dein#add('Shougo/neosnippet-snippets')
"  
"  call dein#add('Shougo/deoplete.nvim')
"  if !has('nvim')
"    call dein#add('roxma/nvim-yarp')
"    call dein#add('roxma/vim-hug-neovim-rpc')
"  endif
"  
"  call dein#add('Shougo/denite.nvim')
"  call dein#add('Shougo/neomru.vim')
"  call dein#add('Shougo/neoyank.vim')
"  call dein#add('Shougo/vimproc', {'build' : 'make'})
"  call dein#add('Shougo/vimshell.vim')
"  "call dein#add('Shougo/unite.vim')
"  "call dein#add('Shougo/neocomplete.vim')
""  call dein#add('Shougo/vimfiler')
"  call dein#add('tpope/vim-fugitive')
"  call dein#add('scrooloose/syntastic.git')
"  "call dein#add('w0rp/ale')
"  
"  " You can specify revision/branch/tag.
"  "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
"  
"  " Required:
"  call dein#end()
"  call dein#save_state()
"endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


