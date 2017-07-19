"插件管理
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'nanotech/jellybeans.vim'
call plug#end()


"事件
autocmd TextChanged * silent! wa 
autocmd InsertLeave * silent! wa 
autocmd FileType * set fo-=c fo-=r fo-=o


"vim 设置相关
set encoding=utf-8
scriptencoding utf-8

set nocompatible
set fillchars=vert:\ 
set backspace=2
set number
set cursorline
"set cursorcolumn
set nospell
set clipboard=unnamed
set noexpandtab
set ignorecase
set incsearch
set nowrap
set nostartofline
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set scrolloff=3
set noshowmode
set laststatus=2
set nobackup
set noswapfile
set showcmd
set signcolumn=yes
set background=dark
set shortmess+=I
set termguicolors
set completeopt-=preview
set guicursor=
set mouse=a
set showtabline=0
set wildignore=*.o,*.obj,*.dll,*.exe,*.deb,*.png

"按键相关
inoremap jk <esc>

map <C-b> <Nop>
map <C-f> <Nop>

map t <Nop>
map T <Nop>
map W <Nop>
map B <Nop>
map E <Nop>
map P <Nop>
map H 0
map L $
map K <Nop>
map J <Nop>

map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-j> <C-W>j
map <C-k> <C-W>k

map U <C-u>
map D <C-d>

nmap ; :
vmap ; :

nnoremap <F2> :YcmCompleter GoToDefinition<CR>
nnoremap <F4> :YcmCompleter GoToDeclaration<CR>

map <leader>f :pyf /usr/local/Cellar/clang-format/2017-03-17/share/clang/clang-format.py<cr>
imap <leader>f :pyf /usr/local/Cellar/clang-format/2017-03-17/share/clang/clang-format.py<cr>

map . <Plug>Sneak_;
map , <Plug>Sneak_,

"界面相关

colorscheme gruvbox

"highlight NonText   cterm=NONE ctermbg=bg ctermfg=bg guibg=NONE guifg=NONE
"highlight VertSplit ctermbg=bg ctermfg=DarkGrey
"highlight CursorLine ctermbg=235

highlight EndOfBuffer ctermfg=bg guifg=bg
highlight CursorLineNr ctermbg=bg guibg=bg

set guifont=Monaco:h13



"插件设置

let g:ctrlp_map = 'P'
let g:ctrlp_working_path_mode = '0' 
let g:ctrlp_types = ['fil']
let g:ctrlp_custom_ignore = {
		\ 'dir':  '\v[\/]\.(git|hg|svn)$',
		\ 'file': '\v\.(exe|so|dll|deb|png|jpg)$'
		\ }


let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 1
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_confirm_extra_conf=0
let g:ycm_use_ultisnips_completer = 0
let g:ycm_key_invoke_completion = '<leader>c'

let g:sneak#use_ic_scs = 1

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'absolutepath' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'inactive': {
      \   'left': [ [ 'mode', 'paste' ], [ 'absolutepath' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ }
