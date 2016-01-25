filetype off
"
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugins')

" Colorschemes
Plug 'https://github.com/chriskempson/base16-vim'

" Session stuff
Plug 'https://github.com/xolox/vim-misc'
Plug 'https://github.com/xolox/vim-session'

" File navigation
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin' | Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tpope/vim-vinegar'
Plug 'https://github.com/rking/ag.vim'
Plug 'https://github.com/FelikZ/ctrlp-py-matcher' " improve CtrlP performance
"Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/justinmk/vim-sneak'
Plug 'https://github.com/terryma/vim-multiple-cursors'

" Display stuff
"Plug 'https://github.com/xsunsmile/showmarks'
Plug 'https://github.com/chrisbra/Colorizer'

" Window stuff
Plug 'https://github.com/qpkorr/vim-bufkill'

" Git
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/airblade/vim-gitgutter'

" Dev stuff
Plug 'https://github.com/scrooloose/syntastic'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/tpope/vim-unimpaired'
Plug 'https://github.com/tpope/vim-endwise'
Plug 'https://github.com/tpope/vim-ragtag'
Plug 'https://github.com/tpope/vim-repeat'
Plug 'https://github.com/godlygeek/tabular'
Plug 'https://github.com/sickill/vim-pasta'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/rizzatti/dash.vim'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/gregsexton/MatchTag'
Plug 'https://github.com/kien/rainbow_parentheses.vim'
" Plug 'https://github.com/laurentgoudet/vim-howdoi'
" Plug 'https://github.com/isovector/vim-howdoi'

" UI Stuff
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/nathanaelkane/vim-indent-guides'
Plug 'https://github.com/junegunn/goyo.vim'
Plug 'https://github.com/mhinz/vim-startify'

" Debug Stuff
Plug 'https://github.com/joonty/vdebug'

" Snippets/Completions
Plug 'https://github.com/SirVer/ultisnips' | Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/valloric/youcompleteme', { 'do': function('BuildYCM') }

" Text stuff
Plug 'https://github.com/kana/vim-textobj-user' " creates new text objects
Plug 'https://github.com/kana/vim-textobj-indent'
Plug 'https://github.com/kana/vim-textobj-entire'
Plug 'https://github.com/reedes/vim-textobj-quote' " support curly quotes & more

" Utilities
Plug 'https://github.com/tpope/vim-speeddating'
Plug 'https://github.com/vim-scripts/VisIncr'
Plug 'https://github.com/sjl/gundo.vim'
Plug 'https://github.com/thinca/vim-quickrun'

" External apps
Plug 'https://github.com/itspriddle/vim-marked' " for Marked2 on OS x
" Plug 'https://github.com/laurentgoudet/vim-howdoi'
Plug 'https://github.com/isovector/vim-howdoi'

" Languages
Plug 'https://github.com/vim-scripts/nginx.vim'
Plug 'https://github.com/mattn/emmet-vim', { 'for': 'html' }
Plug 'https://github.com/othree/html5.vim', { 'for': 'html' }
Plug 'https://github.com/elzr/vim-json', { 'for': 'json' }
Plug 'https://github.com/cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'https://github.com/ap/vim-css-color', { 'for': 'css' }
Plug 'https://github.com/hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'https://github.com/tpope/vim-markdown', { 'for': 'markdown' }

" Drupal
Plug 'git://drupalcode.org/project/vimrc.git', {'branch': '7.x-1.x', 'dir': '~/.vim/plugins/vim-drupal', 'rtp': 'bundle/vim-plugin-for-drupal/'}

call plug#end()
filetype plugin indent on
