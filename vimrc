"=============================================================================
" vimrc --- Entry file for vim
" Copyright (c) 2016-2017 Shidong Wang & Contributors
" Author: Shidong Wang < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

"" Set for tmux.
" Set vim theme.
if exists('$TMUX')
  set term=screen-256color
endif

" set cursor's shape.
if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "<Esc>[3 q"
    let &t_EI = "<Esc>[0 q"
  else
    let &t_SI = "<Esc>]50;CursorShape=1x7"
    let &t_EI = "<Esc>]50;CursorShape=0x7"
  endif
end

" for tmux to automatically set paste and nopaste mode at the time pasting.
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "<Esc>Ptmux;"
  let tmux_end = "<Esc>"

  return tmux_start . substitute(a:s, "<Esc>", "<Esc><Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("<Esc>[?2004h")
let &t_EI .= WrapForTmux("<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()


" Note: Skip initialization for vim-tiny or vim-small.
if 1
    execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'
endif
" vim:set et sw=2
