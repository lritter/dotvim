" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" shortcut for closing buffers
map <Leader>w :bd<CR>

" Map Command-[/] to outdent/indent in normal mode
nmap <D-[> <<
nmap <D-]> >>

" Map Command-[/] to outdent/indent in visual mode
vmap <D-[> <gv
vmap <D-]> >gv

imap <D-[> <C-o><<
imap <D-]> <C-o>>>
