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

" Snippets/Completions
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'valloric/youcompleteme'

" Text stuff
Plug 'kana/vim-textobj-user' " creates new text objects
Plug 'reedes/vim-textobj-quote' " support curly quotes & more

" External apps
Plug 'itspriddle/vim-marked' " for Marked2 on OS x

" Languages
Plug 'vim-scripts/nginx.vim'
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'ap/vim-css-color', { 'for': 'css' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }

" Drupal
Plug 'git://drupalcode.org/project/vimrc.git', {'branch': '7.x-1.x', 'dir': '~/.vim/plugins/vim-drupal', 'rtp': 'bundle/vim-plugin-for-drupal/'}

call plug#end()
filetype plugin indent on
