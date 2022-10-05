""" Config settings
" Use Pathogen
execute pathogen#infect()

" Use Powerline
let g:powerline_pycmd="py3"
let g:powerline_pyeval="py3"
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" No vi compatibility
set nocompatible

" Help force plugins to load correctly
filetype off

" Security
set modelines=0

" Set encoding set encoding=utf-8

" Use 256 colors in terminal
if !has("gui_running")
    set t_Co=256
    set term=screen-256color
endif


""" Editor settings
" Set dark background
set background=dark

" Use gruvbox text settings, make sure italics show up correctly
let g:gruvbox_italic=1
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" Set gruvbox as default colorscheme
colorscheme gruvbox

" Turn on syntax highlighting
syntax enable

" Load plugins correctly
filetype plugin indent on

" Show line numbers
set number

" Set relative line numbers
set relativenumber

" Set spellcheck using US English
setlocal spell
set spelllang=en_us

" Show file stats
set ruler

" Blink instead of making noise
set visualbell

" Whitespace
set nowrap
set textwidth=79
set formatoptions=tcqrn1
set shiftwidth=4
set tabstop=4
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Only show airline stuff 
set noshowmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Enable mouse support
set mouse=a

" Use .markdown file syntax for .md files
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

""" UltiSnips settings
"let g:UltiSnipsExpandTrigger='<tab>'
"let g:UltiSnipsJumpForwardTrigger='<tab>'
"let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

""" vim-markdown settings
set conceallevel=2
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_math = 1
let g:vim_markdown_fenced_languages = ['C=c', 'python', 'java']

""" vim-markdown-preview settings
" UNCOMMENT ONE OF THESE TWO BASED ON DESIRED USE
let vim_markdown_preview_pandoc=1
"let vim_markdown_preview_github=1

""" vimtex settings
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg'
