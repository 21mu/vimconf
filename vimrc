"-----------------------个人设置---------------------------------
set nocompatible
filetype off

"vundle runtime path
if(has("win32"))
    set rtp+=$VIM/vimfiles/bundle/Vundle.vim
else
    set rtp+=$HOME/.vim/bundle/Vundle.vim
endif

"this is vundle package from github
"format "user/repo"

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
"need ctags
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'
"need formatter
"Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
"need ag search
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dkprice/vim-easygrep'
"compatimbbill/undotreeable for terminal
Plugin 'godlygeek/csapprox'
Plugin 'mbbill/undotree'
Plugin 'godlygeek/tabular'
Plugin 'gu-fan/riv.vim'


call vundle#end()

syntax on

filetype plugin indent on

set nu
set laststatus=2
set showcmd
color koehler
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showmatch
set hidden
set nobackup
set laststatus=2
set foldmethod=marker
"set autochdir
"autocmd BufEnter * silent! lcd %:p:h

if(has("mac"))
    set guifont=Monaco:h12
else
    set guifont=Source_Code_Pro:h10,DejaVu\ Sans\ Mono:h10,Consolas:h10
endif
set noswapfile
set noundofile
set completeopt=menu,menuone,longest
set colorcolumn=80
set fileencodings=utf-8,cp936

"enhance vimgrep
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

"shortcut map
let mapleader=','
let g:mapleader=','
nnoremap <Space> :
inoremap <C-f> <C-x><C-f>

"switch window
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>s <C-w>s
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"auto_format
noremap <F3> :Autoformat<CR>

"保存修改并自动格式化
"au BufWrite * :Autoformat

"delimitMate 自动补全括号 扩展换行
let delimitMate_expand_cr = 1

"swith buffer
nnoremap <C-left> :bp<CR>
nnoremap <C-right> :bn<CR>

"nerdtree
nnoremap <leader>nt :NERDTreeToggle<CR>

"undotree
nnoremap <leader>un :UndotreeToggle<CR>

"supertab
"let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionType = "<c-p>"

"tagbar
nnoremap <silent> <leader>tb :TagbarToggle<CR>

" settings for air-line
let g:airline_symbols_ascii = 1
let g:airline#extensions#tabline#enabled = 1
" airline buffer sep
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"airline disable autoload extension
let g:airline#extensions#disable_rtp_load = 1
"airline
let g:airline#extensions#tabline#buffer_nr_show = 1

" ctrlp root dir setting: 'r' search markers, 'a' ancestor and outside of current CtrlP
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_root_markers = ['']
