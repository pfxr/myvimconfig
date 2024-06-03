function UpdateTags()
        call system ("rm -rf tags cscope.files cscope.out")
        call system ("ctags -R . *.c *.h *.hpp *.cpp --tag-relative=yes ./ 2>/dev/null")
        call system ("cscope -b -R")
        silent cscope reset
        TlistUpdate
endfunction


"Vundle related
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'Lokaltog/vim-powerline'
Plugin 'YouCompleteMe'
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

set cursorline

set nowrap
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast = 'hard'


"Key Mapping
map <F3> 
map <F2> 
map <F4> s

autocmd BufWritePre * %s/\s\+$//e

set wildignore+=*.d,*.o,*.hex,*.out,*_PP.*,*.asm
"Auto update scsope and ctags
map <F6> UpdateTags()

"Clang format auto-detect file
let g:clang_format#detect_style_file=1

set clipboard=unnamedplus

" Copy Paste to clipboard
vnoremap <C-c> "+y

