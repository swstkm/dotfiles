set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

Plugin 'scrooloose/syntastic'

" flake8 for syntax checking
Plugin 'nvie/vim-flake8'

" auto-pep8
Plugin 'tell-k/vim-autopep8'

" python-mode for python IDE
"Plugin 'klen/python-mode'

" for any completion in insert mode
Plugin 'ervandew/supertab'

" hemisu colorscheme
Plugin 'noahfrederick/vim-hemisu'

" search anything- I mean, ANYTHING
Plugin 'kien/ctrlp.vim'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" commenting
Plugin 'scrooloose/nerdcommenter'

" for vim-pad
Plugin 'fmoralesc/vim-pad'

" for autocorrection
Plugin 'sedm0784/vim-you-autocorrect'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" This will give you the standard four spaces when you hit tab, ensure your line length doesn’t go beyond 80 characters, and store the file in a unix format so you don’t get a bunch of conversion issues when checking into GitHub and/or sharing with other users.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=100
set expandtab
set autoindent
set fileformat=unix
"set spell spelllang=en_gb

set encoding=utf-8

let python_highlight_all=1
syntax on

" vim-pad directory
let g:pad#dir = "./notes/"

 "set powerline module to use python-3
"let g:powerline_pycmd = "py3"

filetype plugin on
set nu
set cursorline
set title
set mouse=a

set number
set relativenumber

" forces Vim to source .vimrc file if it is present in the working dir, for project-specific
" configuration
set exrc

" restricts usage of some commands because of the above exrc setting, for security
set secure

" for python-mode plugin
let g:pymode_python = 'python3'
" for python-mode rope to be disabled
let g:pymode_rope = 0

