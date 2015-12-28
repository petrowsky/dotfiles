filetype off

call plug#begin('~/.vim/plugins')

" Colorschemes
Plug 'chriskempson/base16-vim'

" File navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Dev stuff
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'rizzatti/dash.vim'

" UI Stuff
Plug 'bling/vim-airline'

call plug#end()
filetype plugin indent on
