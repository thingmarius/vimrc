filetype on
filetype plugin indent on
set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'lifepillar/vim-solarized8'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'alfredodeza/pytest.vim'
" Plugin 'alfredodeza/coveragepy.vim'

" Asynchronous Lint Engine
Plugin 'dense-analysis/ale'

" Plugin 'tpope/vim-obsession'
" Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" syntax highlighting
syntax enable

" colorscheme
set termguicolors
colorscheme solarized8
set background=dark

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set wildmenu              " autocomplete in command bar menu
set wildmode=list:longest " autocomplete in command bar menu
set visualbell
set cursorline
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set ruler                 " show current line and column numbers
set number                " show current line number
set relativenumber        " show relative line numbers
set undofile              " create persistend undo files

" Searching
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Handle long lines better
set wrap
set textwidth=79
set formatoptions=tcrq1j
set colorcolumn=80

" Show invisible characters
set list
set listchars=tab:>\ ,eol:¬

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" Backup
set nobackup

" Backspace
set backspace=indent,eol,start

" strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" select text that was just pasted
nnoremap <leader>v V`]

" disable arrow keys, force me to user hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" map <leader>cd to change working directory to the folder of the current file
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <silent> <F8> :NERDTreeToggle<CR>

"
" Plugin configurations
"

" Vim GitGutter https://github.com/airblade/vim-gitgutter
set updatetime=100

" Asynchronous Lint Engine https://github.com/dense-analysis/ale
let g:ale_completion_enabled=1
