" change hjkl to ijkl.
nnoremap h i
nnoremap i k
nnoremap j h
nnoremap k j

vnoremap h i
vnoremap i k
vnoremap j h
vnoremap k j

inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-d> <DELETE>

" set basic configs.
colorscheme space-vim-dark
set relativenumber

" height column and line.
set cursorcolumn
set cursorline

" set tab and indent.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set autoindent
set smartindent
set cindent

" cancel backup.
set nobackup

" match brackets.
set showmatch
set matchtime=5

" set search.
set incsearch
