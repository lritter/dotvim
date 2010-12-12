
" Start without the toolbar
set guioptions-=T

if has("gui_macvim")
  " Set the font to something nice.
  "set guifont=Menlo:h12

  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  " Disable Command-T menu command for making new tabs
  macmenu &File.New\ Tab key=<nop>
  " Map Command-T key to CommandT command for fuzzy file search
  map <D-t> :CommandT<CR>

  " Command-e for ConqueTerm
  " map <D-e> :call StartTerm()<CR>

  " Turn off default tab cycling (Ctrl-Shift-[, etc) and make those
  " key combos cycle through buffers instead. 
  macm Window.Select\ Previous\ Tab key=<nop>
  map <D-{> :bp<CR>

  macm Window.Select\ Next\ Tab key=<nop>
  map <D-}> :bn<CR>

  " Enable Ctrl-Shift-f to run :Ack command
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<nop>
  map <C-D-F> :Ack<Space>


  "macmenu Edit.Paste key=<nop>

  set guifont=Menlo:h12
endif

" Default gui color scheme
color twilight 

" ConqueTerm wrapper
function StartTerm()
  execute 'ConqueTerm ' . $SHELL . ' --login'
  setlocal listchars=tab:\ \ 
endfunction

" Include user's local vim config
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif

