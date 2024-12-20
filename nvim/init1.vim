" Config

set encoding=utf8

set ignorecase
set smartcase
set hlsearch
set incsearch

set tabstop=2
set softtabstop=2
set shiftwidth=2

set smarttab

set autoindent
set smartindent

set number
"set relativenumber

syntax on
set termguicolors

set mouse=a

" System clipboard
set clipboard=unnamedplus

" Cursor at the center
set so=30

filetype plugin indent on

call plug#begin("~/.vim/plugged")
Plug 'ellisonleao/gruvbox.nvim'
Plug 'mhinz/vim-startify'
Plug 'romgrk/barbar.nvim'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
"Plug 'neoclide/coc.nvim'
Plug 'nvim-tree/nvim-web-devicons'
call plug#end()

let g:startify_custom_header = [
	          \ '',
            \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣷⣝⣻⣿⠿⣿⣿⣿⣿⣿⣟⣾⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢯⣿⣿⣧⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⠟⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
            \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡻⣿⣿⣿⣿⣸⣿⣿⣿⣿⣿⢿⡯⢿⣿⣿⣿⣿⠏⣾⣦⠉⣿⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
            \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣿⣻⣿⣿⣟⢯⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣝⢮⡻⣿⡇⣿⣿⣿⣿⣿⣿⣍⣛⣹⣿⣿⣿⣿⢸⣿⣧⣿⣿⡜⣿⣿⣿⣿⣟⣾⣬⣭⡗⣼⣿⣿⡿⢿⣛⣫⣉⡻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
            \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡽⣿⣿⣿⣿⣷⣯⣯⣍⣛⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣝⡦⣁⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⢸⣿⣿⣿⣿⡇⢿⣿⣿⣿⣾⣿⡿⠿⣐⣿⣽⣶⣿⣿⣿⣿⣿⣿⣶⣭⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣎⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣥⣭⣿⣿⣿⣿⣿⣿⣿⣶⣈⣿⣿⣿⣿⣿⣿⣿⣿⡶⠙⣿⣿⢸⣿⣿⣿⣿⣿⡘⢻⡿⢛⣡⣽⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣝⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣯⣿⣟⢿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣻⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣝⢿⣷⣝⠆⡙⢿⣿⣼⣮⡿⣣⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣝⢿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣯⡙⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣷⣈⢻⣿⣿⣿⣧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡙⣿⣿⣿⣿⣿⣿⣿',
            \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣛⣭⣬⣿⣿⣿⣿⣯⣛⢻⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⢾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⡿⣿⣿⠟⢿⣿⡿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣌⢻⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢛⣼⣿⣿⣿⣿⣿⣯⣝⠻⠿⣿⣿⣟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠘⡿⢀⡿⢋⡄⢸⡿⠀⠟⠋⢸⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠿⣿⣿⣿⣿⣟⣽⣿⣿⣿⣶⣶⣿⣿⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⢸⣿⣿⣿⣿⣿⣿⡏⢰⡀⢁⡞⢁⣈⡀⢸⠁⣴⡖⢠⣿⠟⣻⣿⣿⣿⣿⣿⣿⢠⣿⣿⣿⣿⣿',
            \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣟⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣧⣾⣦⣿⣿⣷⣦⣼⣿⣧⣿⣋⣴⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣛⢛⣮⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⡌⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠋⢉⡻⢉⣿⠋⣉⣉⠉⢻⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⣶⢿⣿⣿⣏⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢀⣿⣦⣿⡏⣰⡿⠋⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣸⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣾⣻⡿⣿⣾⡻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣼⣿⠟⣾⣫⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠁⣈⣹⣿⣿⡀⣁⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣳⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⢟⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⡿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣫⣾⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣷⣼⣾⡿⣿⣿⣿⣿⣷⣝⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣵⣿⣷⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⠇⢸⠏⠀⣿⠃⣼⢁⡟⠀⢻⡏⣸⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣴⣿⣿⣿⣿⣿⣿⣿⠿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⣿⣿⣿⣿⣿⣿⠀⠋⣴⠀⢁⣼⠃⣼⢁⣦⠀⢠⣿⠿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣞⣿⣿⣿⡿⣜⣽⣿⣿⣿⣿⣿⢿⣟⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣻⣿⣿⣿⣿⣿⣿⣤⣾⣿⣦⣾⣿⣴⣧⣼⣿⣦⣾⣧⣶⣿⣿⣿⣿⣿⣿⡟⣼⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣽⢿⣷⣶⣿⣿⣿⡿⣿⣿⣿⣿⣿⢛⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣾⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⡿⣯⣿⣿⣿⣿⣿⣿⡿⢿⣿⣷⣾⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢏⣾⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣵⣿⣽⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⣮⣛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢣⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣿⣿⣿⣿⣯⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣸⣿⣿⣿⣶⣮⣉⣛⢙⡿⠿⠿⠿⠿⣛⣛⣫⡉⢱⣖⡶⣿⣿⣿⣿⠿⠿⡿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣟⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣡⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣉⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⡷⢫⢊⣰⣿⣿⣿⣿⣿⣿⣿⣿⣷⣝⠟⣂⣴⣾⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⢫⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⡿⣿⣿⣿⢃⣴⣼⢹⣼⣿⣿⣿⢿⡟⢿⣷⣿⣿⣎⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣻⣿⣿⣿⣿⣿⣿⣿⣯⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢛⣾⢟⣿⣿⣿⣧⣾⣿⣿⠜⣿⣿⡿⣿⣿⡿⣎⢿⣿⣿⣿⣆⢻⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣽⣿⣿⣥⣾⣿⣿⣿⢹⣿⣾⣿⣿⡟⣿⣿⣿⣿⣿⣿⣿⣟⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⡿⣿⣟⣻⣿⣿⣿⣯⣿⣿⠿⣿⣿⡿⢋⣼⣿⣿⣟⣿⣿⣿⡿⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⣿⣿⣽⣮⢿⣿⣌⢯⣻⣿⣿⣿⣆⢻⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⢻⣿⣿⣿⣿⣟⣿⣿⣿⢃⢿⡿⠿⠿⣫⣾⣿⣿⣷⣿⣿⣿⠟⣹⣿⣿⣿⣿⣿⣿⣿⣾⣿⢿⣿⣿⣿⣿⣿⣿⢏⣽⣿⣿⣿⣿⢿⣩⡿⣫⣾⣿⣿⣿⣿⠟⣫⣵⣿⡿⠿⣷⣿⣿⡋⣽⣿⠟⢻⣿⢷⣟⣿⡏⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣧⣿⣿⣧⡓⠹⣿⣿⣷⡸⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⢟⣷⣯⣿⣾⣵⣿⣿⣿⣿⡿⢿⣾⣿⠏⣼⣿⣿⣿⣿⣿⣿⣿⠟⣉⠆⣾⣿⣿⣿⣿⡿⣳⣿⣿⣿⣿⢟⣵⣿⣿⣾⣿⣿⣿⣿⣫⢾⣿⣿⡿⣋⢴⣾⣿⣿⢯⣾⡿⣡⣶⢿⢏⣿⢸⣿⢁⣿⡟⣿⣇⣿⣿⣿⡿⣩⣿⢥⣿⣿⣿⣿⣿⣼⣿⣿⣿⣧⣭⡻⢿⣦⢿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣽⠻⡿⣡⣾⣿⢟⣵⣿⡿⣻⣟⢵⣯⣾⣦⢻⣋⣽⡛⣿⣿⣿⣿⡿⢋⣵⣾⢿⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣵⣿⣿⣿⠿⠛⣫⣵⣿⡟⣵⣿⡿⢏⣴⣣⣿⣿⡿⣿⣿⢏⣴⣿⣷⣿⣾⣷⣿⡏⣼⣿⡇⣿⣿⣿⣿⡿⢱⣿⡿⣸⣿⣿⢹⣿⣿⣿⡟⣿⣿⣟⣿⣿⣶⡍⡚⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣴⣾⣿⢟⣵⠿⣟⣻⢋⣿⡕⣿⠎⢿⣿⣧⢛⣭⢞⣩⡟⣿⣿⢱⣿⣿⣷⣯⢸⣿⣿⡿⣿⣿⣿⣿⣿⣥⣿⣿⠿⠋⣡⣴⣿⣿⣿⣯⣾⣿⣟⣁⣿⣿⣿⣿⣻⣿⡿⢣⣾⢏⣿⡟⣼⣿⣿⣿⠡⢭⣿⣿⣿⣿⣿⣿⣷⣿⣿⢷⣿⣿⡿⣤⢻⣿⣿⣷⣿⢿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣽⣿⣿⢟⠵⣋⣴⣿⡿⣫⣿⡻⢫⢿⠠⢇⣩⣶⢏⡵⣻⣿⣷⣿⣧⣺⣜⡛⠛⢋⣹⣿⣿⣽⣿⣿⣿⣿⠟⣩⣵⣾⠏⣴⣿⣿⣿⣿⣿⣿⣿⣫⣟⣿⣿⣿⡿⣽⣿⡟⣱⣿⣿⣾⡟⣼⣿⣿⣿⡿⢸⣹⣿⣿⣿⣿⣿⣿⣿⣿⢏⣿⡿⠀⣼⣿⢧⡹⣷⣽⡏⢼⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⢿⢃⣾⣿⣿⢟⡵⠋⠁⠴⢛⣽⠞⢛⣛⢻⣠⣿⣻⣿⠿⡿⢽⣿⣿⣷⣭⡗⢁⢟⡿⢛⡿⡻⢯⡴⣷⣿⣿⣟⣲⣿⣿⣿⣿⣷⣿⡿⣱⣿⣿⣿⢿⣿⣿⣿⡟⣰⣿⣿⣿⡿⣱⠟⡿⣿⣿⣇⠽⢿⣿⣽⣿⣿⣿⣿⣿⣿⢺⡟⢐⣰⡿⠃⢏⣷⠙⣿⣧⣼⢧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣷⡾⡟⠛⠕⠉⡠⠀⢐⢀⣬⡗⣦⢨⣽⡌⠋⡟⣿⣿⣄⢿⣿⣏⣛⣛⠛⡴⡳⢋⠀⡿⢎⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣼⣿⣿⣿⣯⣾⣿⣿⣿⣾⣶⣿⣿⡿⣱⢟⣼⢻⣿⣿⣿⣻⣸⣿⢹⣿⣿⣿⢿⡿⣻⠟⢠⣿⡿⢡⡇⡜⡏⣼⣿⢹⡿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⡋⢀⣀⣠⡴⢩⣴⠟⠀⠞⠄⢀⢋⢧⣙⢁⡆⡇⣿⣿⢛⢸⣿⣿⡿⣫⣮⠎⣰⣤⠟⣀⠈⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣾⣿⣿⣿⣿⣿⣿⣧⡟⣼⣿⣿⣿⣿⠷⠯⢾⢟⣛⣻⣯⣭⢴⣼⣿⣿⣿⣿⣷⣿⣿⡏⢱⣿⣿⣱⡿⣹⢣⣾⣿⣏⢸⣥⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⡡⠂⠀⠈⠀⠠⠘⣎⣿⡸⣷⠁⢻⢻⣸⡰⡿⣋⣠⣵⣿⣺⣿⡟⣰⣯⣵⣆⣬⣕⣈⠻⡟⣿⡿⣿⣿⣿⡟⣾⣿⣿⣿⣿⣿⡿⣾⣿⢗⣿⣿⣽⣍⣁⣴⢶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣾⣿⠁⣿⣿⢃⡿⢣⡏⡾⢉⣿⣿⠏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⡀⢀⣠⣴⠀⢀⠄⠀⠂⠻⣿⡇⢻⠀⢸⣾⣿⣷⣿⡯⠉⠓⡊⠉⢏⠛⠿⢿⣿⣛⡻⢿⣿⣿⣶⣦⣵⣌⢻⣿⣼⣿⣿⣿⣿⣿⣋⣾⣿⡛⣫⣼⣿⣿⣿⣿⡿⢿⣛⣿⠿⠿⠟⣩⠋⠉⣿⣼⣿⣿⣿⠏⡟⢸⣿⣿⣇⢅⣿⢹⠇⣶⡻⣿⡴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣭⣶⣿⣿⣿⣿⣿⢃⠀⢀⣴⠃⠀⠀⢻⡇⢸⡇⢰⣿⣿⣿⣿⣿⣧⣤⣶⣶⣶⡀⣈⣭⠒⢈⠉⠓⠮⠿⣿⣿⣿⣯⣏⢿⣿⣿⣿⣿⣿⣿⣿⣟⢿⣿⣿⣿⣿⣿⠿⠵⠚⠩⣑⠒⠨⠀⢀⣶⣶⣶⡿⣿⣿⣿⠟⡞⠃⣿⣿⣿⣿⠘⡟⡿⠠⣜⣿⣌⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡧⠂⣠⣾⡟⠀⠀⠸⡌⠇⣼⠓⠸⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣷⡘⢿⣆⠙⢟⣳⣄⠀⢿⣿⣿⣿⣟⣬⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⣠⣶⣌⠉⢷⣾⣇⣼⣿⣿⣿⣗⣿⣿⡽⣻⣿⢰⣿⣿⣿⢳⠏⣿⠇⣜⢿⡿⣿⣿⣦⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⣾⣿⣿⠇⠀⢀⠀⠀⠀⢻⣇⠸⣿⣿⣷⣿⣿⣿⣿⣯⣻⣿⣿⣿⣶⣶⣿⣿⣿⣿⢀⢈⢿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⡀⣿⣿⣿⣷⣿⣿⣿⣿⣿⣟⣽⣿⣿⢻⢴⡶⣿⣄⣿⣿⣿⣾⣿⢏⣾⣿⣏⢿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⢀⠇⢀⠀⠀⢰⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣟⣛⣥⣶⣿⣼⣿⣯⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠯⢿⣶⣿⣮⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡾⣿⣿⣿⣿⣿⢰⣿⣼⠃⣼⣿⣿⣿⣯⠧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣥⣾⡿⠀⢀⠀⢿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢸⡇⣿⣿⣿⣿⡏⣸⣿⠃⡀⢻⣿⣿⣿⣿⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⣡⣶⣄⡙⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣴⣿⣧⣻⣿⣿⣿⢡⣿⠃⠂⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣣⣴⣾⣿⣿⣿⣿⡇⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⢈⠁⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⢰⣿⡇⠀⣴⣄⠀⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢁⣿⣿⠁⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⣼⣿⡇⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢰⣿⣿⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠻⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢁⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⣻⣿⡏⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠌⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣡⡞⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⢣⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣿⡿⢣⣾⣿⠁⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠘⣷⣄⠹⣿⣿⣿⣿⣿⣤⣭⣿⣿⣛⠻⠿⠿⠿⠿⠿⠟⠻⠿⠿⠿⠿⠿⠿⠿⠿⠿⣿⣿⣯⣭⣴⣾⣿⣿⣿⡿⢋⣴⣿⣿⠣⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣿⣿⣦⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡶⢄⣀⠒⠶⠶⠶⠶⠶⠶⠶⠖⢒⡠⣲⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⣵⣿⣿⣟⢠⡇⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣦⡀⢼⣿⣿⣷⣄⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣍⣉⣉⡙⠛⠛⢛⣛⣛⣋⣥⣾⣿⣿⣿⣿⣿⣿⣿⣿⠟⣱⣿⣿⣿⣿⢂⣿⠁⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⡦⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣡⣾⣿⣿⣿⣿⢅⣺⡟⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⢿⣿⣿⣿⣿⣿⣄⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢡⣾⣿⣿⣿⣿⣿⣿⢷⣶⡇⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⠀⢹⣿⠦⡙⢿⣿⣿⣿⣿⠄⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⢠⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⠁⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⠀⠀⠀⢸⣿⣷⡌⠢⠙⢿⣿⣿⣷⡈⠂⠀⠈⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠊⣱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⢼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣇⠀⠢⠙⣿⣿⣿⣷⡄⠀⢈⢲⣄⡈⠛⠻⠿⠿⠿⠿⠿⠿⠿⠿⠛⠋⣀⣴⢢⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣆⠀⡀⠙⣿⣿⣿⣷⣀⠀⣾⣿⣿⣿⣿⣶⣶⣶⣦⣤⣤⣤⣤⡴⢢⣾⣱⣿⣿⣿⣿⡿⢛⣫⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠈⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⡆⠈⠢⢙⣿⣿⣿⣷⣄⠈⠉⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣡⣿⢿⣿⣿⣿⣿⡟⣡⣾⡿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⠀⡀⠀⢹⣿⣿⣿⣿⣦⠰⣤⠀⠬⣙⣻⣿⣿⣻⣿⣿⣗⡿⣡⣿⣿⣿⣿⠋⢬⣿⣿⡅⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⣿⣿⣿⣿⡿⠿⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠪⡂⠀⢿⣿⣿⣿⣿⡆⠁⠈⠁⢒⣻⠟⣵⣿⣿⣿⠍⣼⣿⣿⣿⠟⠁⣠⣿⣿⣿⣷⣾⣿⡿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
						\ '⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣀⠨⢑⡒⠆⢼⣿⣿⣿⣅⣾⣿⣿⣿⠋⠀⣠⣬⣿⣿⡭⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
            \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠿⠿⣤⠐⢮⣽⣿⣿⣿⣿⣿⣿⣿⣿⠇⡉⠠⠟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⢿⣿⣿⣿⣿⣿',
            \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠛⠛⠛⠛⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠛',
            \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
            \ ' ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
						\ ]

set background=dark
colorscheme gruvbox

"inoremap <expr> <Tab> coc#pum#visible() ? coc#pumconfirm() : "\<Tab>"
