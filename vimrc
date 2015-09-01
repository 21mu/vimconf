set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#rc()

"this is vundle package from github
"format "user/repo"
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'Rip-Rip/clang_complete'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'

"this is from vim-script
"format is "plugin-name"
Plugin 'The-NERD-tree'
Plugin 'a.vim'

call vundle#end()

filetype plugin indent on
set nu
set showcmd
set ruler
set autoindent 
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showmatch
set hidden

colorscheme desert
syntax on
syntax enable

set nobackup
set laststatus=2
set autochdir

"shortcut map
let mapleader=','
let g:mapleader=','
nnoremap <Space> :
inoremap <C-f> <C-x><C-f>

"切换window
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>s <C-w>s
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"切换buffer
nnoremap <C-left> :bp<CR>
nnoremap <C-right> :bn<CR>
"修改.vimrc
nnoremap <silent> <leader>conf :e $MYVIMRC<CR>

"shortcut for NERD-Tree
nnoremap <leader>nt :NERDTreeToggle<CR>

"enable vim-airline
let g:airline#extensions#tabline#enabled = 1

"configure for clang_complete
let g:clang_use_library = 1
let g:clang_library_path = '/usr/lib/llvm-3.4/lib'
let g:clang_hl_errors = 1
let g:clang_snippets = 1
let g:clang_complete_auto = 0

"settings for TagBar
nnoremap <silent> <leader>tb :TagbarToggle<CR>
