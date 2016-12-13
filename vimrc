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

filetype plugin indent on    " required

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
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<ENTER>']

" tagbar
let g:tagbar_autofocus = 1

" no error beeping
set noeb vb t_vb=