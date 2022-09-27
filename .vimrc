""" Config settings
" use Pathogen
execute pathogen#infect()

" use Powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" no vi compatibility
set nocompatible

" help force plugins to load correctly
filetype off

" security
set modelines=0

" set encoding
set encoding=utf-8

" use 256 colors in terminal
if !has("gui_running")
    set t_Co=256
    set term=screen-256color
endif


""" Editor settings
" set dark background
set background=dark

" use gruvbox text settings, make sure italics show up correctly
let g:gruvbox_italic=1
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" set gruvbox as default colorscheme
colorscheme gruvbox

" turn on syntax highlighting
syntax on

" load plugins correctly
filetype plugin indent on

" show line numbers
set number

" show file stats
set ruler

" blink instead of making noise
set visualbell

" whitespace
set nowrap
set textwidth=79
set formatoptions=tcqrn1
set shiftwidth=4
set tabstop=4
set expandtab
set noshiftround

" cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>

" allow hidden buffers
set hidden

" rendering
set ttyfast

" status bar
set laststatus=2

" only show airline stuff 
set noshowmode
set showcmd

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" enable mouse support
set mouse=a

" use .markdown file syntax for .md files
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

""" vim-markdown settings
set conceallevel=2
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_math = 1
let g:vim_markdown_fenced_languages = ['C=c', 'python', 'java']

""" vim-markdown-preview settings
" UNCOMMENT ONE OF THESE TWO BASED ON DESIRED USE
let vim_markdown_preview_pandoc=1
"let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Firefox'
