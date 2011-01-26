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

" shortcut for closing buffers while keeping the window layout
map <Leader>w <Plug>Kwbd

" shortcut for closing buffer and killing the buffers window
map <Leader>W :bd<CR>

" Map Command-[/] to outdent/indent in normal mode
nmap <D-[> <<
nmap <D-]> >>

" Map Command-[/] to outdent/indent in visual mode
vmap <D-[> <gv
vmap <D-]> >gv

imap <D-[> <C-o><<
imap <D-]> <C-o>>>

" Emacs-ish 'jump to end of line' in insert mode
imap <C-e> <C-o>A

" Emacs-ish 'jump to first char in line' in insert mode
imap <C-a> <C-o>^

" Emacs-ish 'jump to very begining of line' in insert mode
imap <C-A> <C-o>0

" Key combo for wrapping text
imap <C-q> <C-o>gq{
