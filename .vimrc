"Allow .vimrc to be loaded from the current directory
set exrc
set secure


"Vundle related
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'Lokaltog/vim-powerline'
"Plugin 'cscope_maps/cscope_maps.vim'
call vundle#end()            " required
filetype plugin indent on    " required

set laststatus=2
set t_Co=256
let g:Powerline_symbols= 'unicode'
set encoding=utf8

"Highlight search word
set hlsearch

"Set path variable - Used for find command
set path=$PWD/**

"tab configuration
set tabstop=2
set softtabstop=0 expandtab
set shiftwidth=2
      
"Line numbering
set number

"Allow user of mouse
set mouse=a

set nowrap
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast = 'hard'


"Key Mapping
map <F3> 
map <F2> 
map <F4> s

" Copy paste to systems clipboard
set clipboard=unnamedplus

" GDB
packadd termdebug 
let g:termdebug_popup = 0
let g:termdebug_wide = 163
map <F6> :Termdebug<CR>
map <F7> :Step<CR>
map <F8> :Over<CR>
map <F9> :Finish<CR>
map <F10> :Continue<CR>
map <F11> :Stop<CR>
