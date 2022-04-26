" Change <Leader>
let mapleader = ","

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " relative numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=100                  " set an 80 column border for good coding style

filetype plugin indent on   "allow auto-indenting depending on file type

syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

" Plugins
call plug#begin("~/.config/nvim/plugins/")
  Plug 'dracula/vim' "theme
  Plug 'ryanoasis/vim-devicons' "icon for nerdtree
"  Plug 'SirVer/ultisnips'
"  Plug 'honza/vim-snippets'
  Plug 'scrooloose/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'vim-airline/vim-airline'
"  Plug 'mhinz/vim-startify'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'} "code completetion engine
call plug#end()

" JJ escape
inoremap jj <ESC>:wa<CR>


" Nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline = 1
let NERDTreeShowHidden=1

"Move between windows
nnoremap <Tab> <C-W><C-W>
