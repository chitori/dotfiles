
set ch=2		" Make command line two lines high


set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

"set t_Co=256
"let g:twilight_use_iTerm_colors = 1
"colorscheme twilight
syntax on

" ステータスラインの表示
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

imap [ []<left>
imap ( ()<left>
imap { {}<left>

nmap <Esc><Esc> /nohlsearch<CR><ESC>

""カーソル移動変更
"noremap k j
"noremap j h
"noremap h i
"noremap i k

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

"外部クリップボードペースト
nnoremap <Space>p "*p
nnoremap <Space>P "*P

"括弧移動
nnoremap ] %
nnoremap [ %
vnoremap ] %
vnoremap [ %

"タブ分割
nnoremap ss :sp<CR>
nnoremap sv :vsp<CR>
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

"カレントディレクトリ設定
"nnoremap :cdg :cd %:h
"nnoremap :cdc :cd %
"<Tab>
"inoremap <C-h> <C-i>

"---neosnippet---------------------------
" Plugin key-mappings.
imap <C-b>     <Plug>(neosnippet_expand_or_jump)
smap <C-b>     <Plug>(neosnippet_expand_or_jump)
xmap <C-b>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
"---end of neosnippet---------------------

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/th/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/th/.vim/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/vimproc', {'build' : 'make'})
call dein#add('Shougo/vimshell.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/vimfiler')
call dein#add('tpope/vim-fugitive')
call dein#add('scrooloose/syntastic.git')
"call dein#add('w0rp/ale')

" You can specify revision/branch/tag.
"call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

"VimShell設定-------
"プロンプトにカレントディレクトリを表示
let g:vimshell_prompt_expr = 'getcwd()." > "'
let g:vimshell_prompt_pattern = '^\f\+ > '

"neocomplete設定-----
let g:neocomplete#enable_at_startup = 1
"  補完候補の一番先頭を選択状態にする(AutoComplPopと似た動作)
let g:neocomplete#enable_auto_select = 1
" 補完が自動で開始される文字数
let g:neocomplete#auto_completion_start_length = 3
" smarrt case有効化。 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#enable_smart_case = 1
" camle caseを有効化。大文字を区切りとしたワイルドカードのように振る舞う
let g:neocomplete#enable_camel_case_completion = 1
" _(アンダーバー)区切りの補完を有効化
let g:neocomplete#enable_underbar_completion = 1

inoremap <expr><C-m> neocomplete#smart_close_popup()."\<C-m>"
" 補完を選択しpopupを閉じる
inoremap <expr><C-y> neocomplete#close_popup()
" 補完をキャンセルしpopupを閉じる
inoremap <expr><C-e> neocomplete#cancel_popup()
" TABで補完できるようにする
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" undo
inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap <expr><C-q>     neocomplete#complete_common_string()
" 補完候補が出ていたら確定、なければ改行
inoremap <expr><CR>  pumvisible() ? neocomplete#close_popup() : "<CR>"
"--------------------

"Unite設定------------
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200

nnoremap  ,uu :Unite file<CR>
"nnoremap  ,uy :<C-u>Unite history/yank<CR>
nnoremap  ,ub :<C-u>Unite buffer<CR>
"nnoremap  ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"nnoremap  ,ur :<C-u>Unite -buffer-name=register register<CR>
"nnoremap  ,uu :<C-u>Unite file_mru buffer<CR>

"syntastics
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_java_checkers=['javac']
