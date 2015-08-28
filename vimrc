set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#rc()

"this is vundle package from github
"format "user/repo"
Plugin 'gmarik/vundle'
Plugin 'bling/vim-airline'

"this is from vim-script
"format is "plugin-name"
"
Plugin 'taglist.vim'
Plugin 'SuperTab'
Plugin 'winmanager'
Plugin 'The-NERD-tree'

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

colorscheme desert
syntax on
syntax enable

set nobackup
set laststatus=2
set autochdir

"shortcut map
let mapleader=','
nnoremap <Space> :

"enable vim-airline
let g:airline#extension#tabline#enable=1

"settings for Taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0

