call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'Shougo/neocomplete'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite.vim'
Plug 'fuenor/qfixhowm'

" Add plugins to &runtimepath
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

syntax enable
"set background=dark
"colorscheme solarized
set guifont=Osaka−等幅:h16

"クリップボードにコピー
set guioptions+=a
set clipboard+=unnamed

""""""""""""""""""""""""""""""""""""""""""""""""""""
"qfixhowmの設定
""""""""""""""""""""""""""""""""""""""""""""""""""""
let QFixHowm_Key = 'g'
let howm_dir             = '~/howm'
let mygrepprg = 'grep'
let howm_filename        = '%Y/%m/%Y_%m_%d.howm'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'dos'

nmap <Space> [unite]
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>
nnoremap <silent> [unite]m :<C-u>Unite<Space>file_mru<CR>

set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
