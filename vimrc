set nocompatible              " be iMproved, required

filetype on " without this vim emits a zero exit status, later, because of :ft off
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required

" ensure ftdetect et al work by including this after the Vundle stuff
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set encoding=utf-8
set list
set listchars=tab:▸\ ,trail:▫
set ruler
set smartcase
set wildmenu " show a navigable menu for tab completion
set wildmode=longest,list,full"
set mouse=a

colorscheme molokai

if has("gui_macvim")
  set macligatures
  set guifont=Fira\ Code:h14
endif

syntax on 

" Indent Guide Line
" indentLine will overwrite 'conceal' color with grey by default. 
" If you want to highlight conceal color with your colorscheme, disable by:
" let g:indentLine_setColors = 0
let g:indentLine_char = '┆'

" diable left and right scrollbar
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r


" keymap
let mapleader=","
map <leader>d :NERDTreeToggle<CR>
map <D-/> :call NERDComment(0, "toggle")<CR>
map gcc :call NERDComment(0, "toggle")<CR>
map <leader>p :CtrlP<CR>
map <D-r> :TagbarToggle<CR>
map <leader>r :TagbarToggle<CR>
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

set number

" airline
set laststatus=2

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

let g:jsx_ext_required = 0

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'


" autocomplete
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<ENTER>', '<C-Space>']

" tagbar
let g:tagbar_autofocus = 1

" no error beeping
set noeb vb t_vb=

" code folding
set foldmethod=syntax
set foldlevel=0
set nofoldenable

" easy motion
let g:EasyMotion_smartcase = 1
