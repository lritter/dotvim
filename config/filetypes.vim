" make and python use real tabs
au FileType make                                     set noexpandtab
au FileType python                                   set noexpandtab

" Thorfile, Rakefile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru}    set ft=ruby

" Treat JSON like Javascript
autocmd BufRead,BufNewFile *.json set filetype=javascript

" Helper function to setup text wrapping
function s:setupWrapping()
  set wrap
  set wm=2
  set textwidth=72
endfunction

" Helper function to turn on markup
function s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Mm <CR>
endfunction

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" Set wrapping for text files
au BufRead,BufNewFile *.txt call s:setupWrapping()

