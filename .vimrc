" Vundle configs
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'valloric/youcompleteme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" show line numbers
set number

" syntax highlighting 
" highlight the current line
syntax on
set cursorline

" tabstop - tab size of 4
" expandtab - replace tabs with white spaces
" smarttab - when deleting whitespace at hte beginning of a line 
"            delete 1 tab of spaces (4 spaces)
set tabstop=4
set expandtab
set smarttab

" automatic indentation
set autoindent

" highlight search results (after pressing enter)
set hlsearch

" show the matching brackets 
set showmatch
