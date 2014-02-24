
set nocompatible


"--[ Pathogen Setup ] --"
call pathogen#infect()


"--[ Vundle Setup ]--"
filetype on
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()


set laststatus=2
set rtp+=/home/finges/.local/lib/python3.3/site-packages/powerline/bindings/vim
"-- [GUI setup ]--"
syntax on                   " Set syntax highlighting on
set backspace=indent,eol,start  " Backspace
set number                  " Set Linenumbers on
set linespace=0             " No Extra spaces between rows
set showmatch               " Show matching Paren/brackets
set hlsearch                " Highlight Search Terms
set incsearch               " Hightlight search while typing
set ignorecase              " Case insensitive search
set smartcase               " Case sensitive when uppercase present
set wildmenu                " Show list instead of just completing
set colorcolumn=85          " Show column boundary
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set scrolljump=5            " Lines to scroll when cursor leaves screen
set scrolloff=3             " Minimum lines to keep above/below cursor
set background=dark         " Set a dark background
colorscheme solarized       " Set colorscheme to Solarized Dark


"-- [ Formatting ]--"
set nowrap                  " Do not wrap long lines
set autoindent              " Indent at the same level as previous line
set shiftwidth=2            " Use indents of 2 spaces (Ruby)
set tabstop=2               " An indentation every 2 columns
set expandtab               " Tabs are spaces not tabs
set nojoinspaces            " Prevents 2 spaces after a join
set splitright              " Puts new vsplit window to the right
set splitbelow              " Puts new hsplit window to the bottom
set cursorline              " Highlight current line

"-- [ Set tabs for python ] --"
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4

filetype plugin indent on

"--[ Vundle Packages ]--"
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'


"-- [ Keybindings ] --"
let mapleader = ','        " Change mapleader to
noremap ; :

"Remap keys to use screen lines instead of file lines. Usefull if wrapping
"line

nnoremap j gj
nnoremap k gk
nnoremap $ g$
nnoremap 0 g0
nnoremap <end> g<end>
nnoremap <home> g<home>
nnoremap ^ g^

" Hide search highlighting
nmap <silent> <leader>/ :set invhlsearch<cr>

" Visual mode shifting - no exit
vnoremap < <gv
vnoremap > >gv



