
" Command-T configuration
let g:CommandTMaxHeight=20
"let g:CommandTAlwaysShowDotFiles=1
"let g:CommandTScanDotDirectories=1

" Set the CommandT key to Command-T in gui mode.
if has("gui_macvim")
  " Command-T for CommandT
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif
map <D-t> :CommandT<CR>
macmenu &File.New\ Tab key=<nop>
