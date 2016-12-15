if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  macmenu File.Print key=<nop>
  macmenu Edit.Font.Bigger key=<nop>
  macmenu Edit.Font.Smaller key=<nop>
  map <D-p> :CtrlP<CR>
  map <D-t> :CtrlP<CR>
  map <D-P> :<CR>
  map <D-D> :Dash<CR>
endif
