" if plug.vim isn't there, download and install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Sensible vim settings
Plug 'tpope/vim-sensible'
Plug 'flazz/vim-colorschemes'

Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'

" pired brackets, quotes, etc
Plug 'jiangmiao/auto-pairs'
" easy commenting
Plug 'scrooloose/nerdcommenter'

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/defaults.vim
hi Normal ctermbg=NONE

"set t_Co=256
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
filetype plugin on

syntax on
set background=dark
"colorscheme base

" make bksp work normally
set backspace=indent,eol,start

set nu
set cursorline
set number
set relativenumber
set title

" allow mouse usage
set mouse=a
