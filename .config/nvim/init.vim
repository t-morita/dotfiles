call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neoyank.vim'
Plug 'Shougo/unite.vim'
Plug 'fuenor/qfixhowm'
Plug 'lervag/vimtex'
Plug 'scrooloose/syntastic'
Plug 'Yggdroot/indentLine'
Plug 'Rykka/riv.vim'

call plug#end()

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

syntax enable

"クリップボードにコピー
set guioptions+=a
set clipboard+=unnamed

set tabstop=4
set shiftwidth=4 

""""""""""""""""""""""""""""""""""""""""""""""""""""
"qfixhowmの設定
""""""""""""""""""""""""""""""""""""""""""""""""""""
let QFixHowm_Key = 'g'
let howm_dir             = '~/howm'
let mygrepprg = 'grep'
let howm_filename        = '%Y/%m/%Y_%m_%d.howm'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'dos'

set laststatus=2
set foldlevel=100
if !has('gui_running')
  set t_Co=256
endif

let g:deoplete#enable_at_startup = 1
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 100
nmap <Space> [unite]
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>
nnoremap <silent> [unite]m :<C-u>Unite<Space>file_mru<CR>
nnoremap <silent> [unite]u :<C-u>Unite<Space>file_mru buffer<CR>
nnoremap <silent> [unite]y :<C-u>Unite<Space>history/yank<CR>
nnoremap <silent> [unite]r :<C-u>Unite<Space>-buffer-name=register<Space>register<CR>

let g:tex_flavor = 'latex'
nmap <space>li <plug>(vimtex-info)
 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:indentLine_color_term = 239

autocmd BufNewFile,BufRead *.py nnoremap <C-e> :!python %
