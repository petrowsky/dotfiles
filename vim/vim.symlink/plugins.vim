filetype off

call plug#begin('~/.vim/plugins')

" Colorschemes
Plug 'chriskempson/base16-vim'

" Session stuff
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" File navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-vinegar'
Plug 'rking/ag.vim'
Plug 'FelikZ/ctrlp-py-matcher' " improve CtrlP performance
Plug 'easymotion/vim-easymotion'

" Display stuff
"Plug 'xsunsmile/showmarks'
Plug 'chrisbra/Colorizer'

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
Plug 'majutsushi/tagbar'
Plug 'rizzatti/dash.vim'

" UI Stuff
Plug 'bling/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'

" Debug Stuff
Plug 'joonty/vdebug'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Text stuff
Plug 'kana/vim-textobj-user' " creates new text objects
Plug 'reedes/vim-textobj-quote' " support curly quotes & more

" Languages
Plug 'vim-scripts/nginx.vim'

call plug#end()
filetype plugin indent on
