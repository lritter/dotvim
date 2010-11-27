
if has("gui_macvim")
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  " Map Command-T key to CommandT command for fuzzy file search
  map <D-t> :CommandT<CR>

  " Disable Command-T menu command for making new tabs
  macmenu &File.New\ Tab key=<nop>

  " Command-e for ConqueTerm
  " map <D-e> :call StartTerm()<CR>
endif

" Start without the toolbar
set guioptions-=T

" Default gui color scheme
"color twilight 

" ConqueTerm wrapper
function StartTerm()
  execute 'ConqueTerm ' . $SHELL . ' --login'
  setlocal listchars=tab:\ \ 
endfunction

" Include user's local vim config
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif
