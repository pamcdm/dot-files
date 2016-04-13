set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Tooling
Bundle 'L9'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'

" Themes and bars
Bundle 'Lokaltog/vim-powerline'
Bundle 'flazz/vim-colorschemes'

colorscheme monokai
set background=dark
set guifont=Menlo:h14
set noerrorbells
set novisualbell
set cursorline
set ruler
set number
set nowrap
set completeopt=menu,preview
set laststatus=2
set hlsearch
set guioptions-=T
set showcmd
set showmode
set showfulltag
set showmatch

" Code settings and aid
Bundle 'tsaleh/vim-align'
Bundle 'ervandew/supertab'

set encoding=utf8
set fileencoding=utf8
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartcase
set smarttab
set backspace=indent,eol,start
set autowriteall
set autoread
set autowrite
set backupdir=$TMPDIR
set shiftround
set undofile
set undodir=$TMPDIR
set incsearch
set hidden

" Languages and Filetypes
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'jelera/vim-javascript-syntax'

syntax enable
filetype plugin indent on

au BufRead,BufNew *.soy set ft=html
au BufRead,BufNew *.coffee set ft=coffee
au BufRead,BufNew *.html.erb set ft=eruby.html
au BufRead,BufNew Vagrantfile set ft=ruby
au BufRead,BufNew Gemfile set ft=ruby
au BufRead,BufNew Guardfile set ft=ruby
au BufRead,BufNew Procfile set ft=ruby

filetype plugin indent on