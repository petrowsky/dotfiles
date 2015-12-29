filetype off

call plug#begin('~/.vim/plugins')

" Colorschemes
Plug 'chriskempson/base16-vim'

" File navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-vinegar'
Plug 'rking/ag.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Dev stuff
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'godlygeek/tabular'
Plug 'sickill/vim-pasta'
Plug 'rizzatti/dash.vim'

" UI Stuff
Plug 'bling/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'

" Debug Stuff
Plug 'joonty/vdebug'

call plug#end()
filetype plugin indent on
