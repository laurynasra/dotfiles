execute pathogen#infect()

" dont make vim compatible with vi 
set nocompatible

" add line numbers
set number


" make vim try to detect file types and load plugins for them
filetype off
filetype plugin on
" filetype indent on

" reload files changed outside vim
set autoread    

" encoding is utf 8
set encoding=utf-8
set fileencoding=utf-8

" set unix line endings
set fileformat=unix
" when reading files try unix line endings then dos, also use unix for new
" buffers
set fileformats=unix,dos

"general

" webdev
syntax enable
filetype plugin indent on    " required

" set the color theme to wombat256
colorscheme codedark 
" make a mark for column 80
" set colorcolumn=80
"and set the mark color to DarkSlateGray
highlight ColorColumn ctermbg=lightgray guibg=lightgray

set tabstop=2
set shiftwidth=2

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"How can I map a specific key or shortcut to open NERDTree?
map <C-n> :NERDTreeToggle<CR>

"How can I open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"CTRLP dont search node_modules
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
