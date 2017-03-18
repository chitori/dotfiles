
set ch=2		" Make command line two lines high


set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

"set t_Co=256
"let g:twilight_use_iTerm_colors = 1
"colorscheme twilight
syntax on

" �X�e�[�^�X���C���̕\��
set statusline=%<     " �s����������Ƃ��ɐ؂�l�߂�ʒu
set statusline+=[%n]  " �o�b�t�@�ԍ�
set statusline+=%m    " %m �C���t���O
set statusline+=%r    " %r �ǂݍ��ݐ�p�t���O
set statusline+=%h    " %h �w���v�o�b�t�@�t���O
set statusline+=%w    " %w �v���r���[�E�B���h�E�t���O
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}  " fenc��ff��\��
set statusline+=%y    " �o�b�t�@���̃t�@�C���̃^�C�v
set statusline+=\     " �󔒃X�y�[�X
set statusline+=%=    " ���񂹍��ڂƉE�񂹍��ڂ̋�؂�
set statusline+=%{fugitive#statusline()}  " Git�̃u�����`����\��
set statusline+=\ \   " �󔒃X�y�[�X2��
set statusline+=%1l   " ���s�ڂɃJ�[�\�������邩
set statusline+=/
set statusline+=%L    " �o�b�t�@���̑��s��
set statusline+=,
set statusline+=%c    " ����ڂɃJ�[�\�������邩
set statusline+=%V    " ��ʏ�̉���ڂɃJ�[�\�������邩
set statusline+=\ \   " �󔒃X�y�[�X2��
set statusline+=%P    " �t�@�C�����̉����̈ʒu�ɂ��邩


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

""�J�[�\���ړ��ύX
"noremap k j
"noremap j h
"noremap h i
"noremap i k

"�X�N���[��
noremap <Space>j <C-f>
noremap <Space>k <C-b>
noremap <Space>l <C-d>
noremap <Space>h <C-u>


"�J�[�\���ړ��ύX�i�}�����[�h�j
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"�O���N���b�v�{�[�h�y�[�X�g
nnoremap <Space>y "*y

"�O���N���b�v�{�[�h�y�[�X�g
nnoremap <Space>p "*p
nnoremap <Space>P "*P

"���ʈړ�
nnoremap ] %
nnoremap [ %
vnoremap ] %
vnoremap [ %

"�^�u����
nnoremap ss :sp<CR>
nnoremap sv :vsp<CR>
"�^�u�ύX
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sw <C-w>w
"�^�u�ړ�
nnoremap sH <C-w>H
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
"�V�K�^�u
nnoremap st :tabnew<CR>

"�J�����g�f�B���N�g���ݒ�
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

"VimShell�ݒ�-------
"�v�����v�g�ɃJ�����g�f�B���N�g����\��
let g:vimshell_prompt_expr = 'getcwd()." > "'
let g:vimshell_prompt_pattern = '^\f\+ > '

"neocomplete�ݒ�-----
let g:neocomplete#enable_at_startup = 1
"  �⊮���̈�Ԑ擪��I����Ԃɂ���(AutoComplPop�Ǝ�������)
let g:neocomplete#enable_auto_select = 1
" �⊮�������ŊJ�n����镶����
let g:neocomplete#auto_completion_start_length = 3
" smarrt case�L�����B �啶�������͂����܂ő啶���������̋�ʂ𖳎�����
let g:neocomplete#enable_smart_case = 1
" camle case��L�����B�啶������؂�Ƃ������C���h�J�[�h�̂悤�ɐU�镑��
let g:neocomplete#enable_camel_case_completion = 1
" _(�A���_�[�o�[)��؂�̕⊮��L����
let g:neocomplete#enable_underbar_completion = 1

inoremap <expr><C-m> neocomplete#smart_close_popup()."\<C-m>"
" �⊮��I����popup�����
inoremap <expr><C-y> neocomplete#close_popup()
" �⊮���L�����Z����popup�����
inoremap <expr><C-e> neocomplete#cancel_popup()
" TAB�ŕ⊮�ł���悤�ɂ���
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" undo
inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap <expr><C-q>     neocomplete#complete_common_string()
" �⊮��₪�o�Ă�����m��A�Ȃ���Ή��s
inoremap <expr><CR>  pumvisible() ? neocomplete#close_popup() : "<CR>"
"--------------------

"Unite�ݒ�------------
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
