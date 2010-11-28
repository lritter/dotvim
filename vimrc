set nocompatible

" allow buffers to be hidden when they're not saved
set hidden

" Turn off filetype stuff so that Pathogen is able to load things properly
filetype off
silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()

" turn on all filetype settings, syntax, etc.
filetype plugin indent on
syntax on

let mapleader = ";"

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif


" CTags
" map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

" Default color scheme
colorscheme twilight 

" load everything else in its own config file
runtime! config/**/*

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

