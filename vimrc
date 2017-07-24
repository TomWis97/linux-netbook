" Powerline stuff.
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
set t_Co=256
" Hide ---insert---
set noshowmode
" Show command keys
set showcmd
" Not strictly necessary, should be on by default.
set nocompatible
" Automagically indent
set autoindent
" Spaces instead of tabs
set tabstop=4
set softtabstop=4
set expandtab
" Line numbers
set number
" Turn on filetype detection and allow loading of language specific
" indentation files.
filetype indent on
" Prevent unnecessary redraws
set lazyredraw
" Show matching brackets
set showmatch
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
