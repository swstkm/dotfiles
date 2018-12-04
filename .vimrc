set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" " iPlugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" " iPlugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" " iPlugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" " iPlugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " iPlugin 'ascenator/L9', {'name': 'newL9'}
"
Plugin 'scrooloose/syntastic'
Plugin 'tmhedberg/simpylfold'
Plugin 'nanotech/jellybeans.vim'
Plugin 'townk/vim-autoclose'
Plugin 'scrooloose/nerdcommenter'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'

" Plugin 'davidhalter/jedi-vim'
" for python autocomplete


" for vim-pad
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'fmoralesc/vim-pad'

" for filename completion
Plugin 'boundincode/autofilename'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
hi Normal ctermbg=NONE

set t_Co=256
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
filetype plugin on

syntax on
set background=dark
colorscheme base

set nu
set cursorline
set number
set relativenumber
set title

" let g:pymode_rope_lookup_project = 0

" allow mouse usage
set mouse=a

" allow vim-pandoc to be used with vim-pad
let g:pad#default_format = "pandoc"
