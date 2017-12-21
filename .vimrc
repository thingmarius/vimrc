filetype off
set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'alfredodeza/coveragepy.vim'
Plugin 'scrooloose/syntastic'
" Plugin 'alfredodeza/pytest.vim'
" Plugin 'tpope/vim-obsession'
" Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on

" call glaive#Install()
" Glaive coverage plugin[mappings]

" syntax highlighting
syntax enable

" tabs configuration
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" UI config
if has('gui_running')
    colorscheme solarized
    set guifont=Lucida_Console:h10:cANSI
endif
" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
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
set formatoptions=qrn1
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
nnoremap <silent> <F9> :update \| SyntasticCheck<CR>

" Settings for the 'Syntastic' plugin
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

nnoremap <silent> <C-<> :lprevious<CR>
nnoremap <silent> <C-\>> :lnext<CR>
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0

" Disable automatic checks by Syntastic
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_python_python_exec = '.venv/Scripts/python.exe'
let g:syntastic_python_checkers = ['pylint']
