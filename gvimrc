if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  macmenu File.Print key=<nop>
  map <D-p> :CtrlP<CR>
  map <D-t> :CtrlP<CR>
endif
