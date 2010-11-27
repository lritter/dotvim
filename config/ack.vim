
if has("gui_macvim")
  " Command-Shift-F for Ack
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<nop>
endif

macmenu Window.Toggle\ Full\ Screen\ Mode key=<nop>
map <C-D-F> :Ack<Space>

map <Leader>a :Ack<Space>
