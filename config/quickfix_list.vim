autocmd BufEnter * call AutocloseQuickfixList()
function! AutocloseQuickfixList()
  " if the window is quickfix go on
  if &buftype=="quickfix"
    " if this window is last on screen quit without warning
    if winbufnr(2) == -1
      quit!
    endif
  endif
endfunction

