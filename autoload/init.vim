func! init#before() abort

endf

func! init#after() abort
    " change hjkl to ijkl
    nnoremap h i
    nnoremap i k
    nnoremap j h
    nnoremap k j

    vnoremap h i
    vnoremap i k
    vnoremap j h
    vnoremap k j

    vnoremap v <esc>
    vmap hh <Plug>(textobj-indent-i)
    vmap hl <Plug>(textobj-line-i)
    vunmap V
    vunmap ii
    vunmap il

    inoremap <C-n> <Down>
    inoremap <C-p> <Up>
    inoremap <C-f> <Right>
    inoremap <C-b> <Left>
    inoremap <C-d> <DELETE>
    iunmap jk

    " set basic configs.
    set guifont=Ubuntu\ Mono:h18
    set guioptions+=m  "remove menu bar

    " set the Tab
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab

    " set system clipboard by default
    set clipboard=unnamedplus

    " set cursor's shape
    set guicursor=i:ver1

    " height column and line.
    set cursorcolumn
    set cursorline

endf
