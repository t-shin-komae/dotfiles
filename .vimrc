" basic.vim
" 基本設定
"
set hidden " 保存されていないファイルがある時でも別のファイルを開くことができる。
" Encoding
set encoding=utf-8      " Vim内部のエンコード設定.
set fileencoding=utf-8  " ファイルの書き込み時.
set fileencodings=utf-8 " ファイルの書き込み時.
set nobomb              " BOM is not prepended. (when binary option is on,
" BOM is not prepended)

"" Fix backspace indent ------------------------------------------------
set backspace=indent,eol,start

"" Directories for swp files -------------------------------------------
set nobackup
set noswapfile

" File format setting (this only works on creating new buffer) ---------
set fileformats=unix,dos,mac

" Tab settings
set expandtab
set tabstop=4
set shiftwidth=4

" complete option
" TODO もうちょっと調査
set completeopt=menuone

"vim-terminal settings
tnoremap <Esc> <C-\><C-n>

" for mouse
set mouse=a

"for clipboard
" set clipboard+=unnamedplus


" mapping
"
let mapleader="\<Space>"

" Wrappingされている場合
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k



" 画面分割
noremap <Leader>h :<C-u>split<CR><C-w>j
noremap <Leader>v :<C-u>vsplit<CR><C-w>l


let g:fontzoom_no_default_key_mappings = 1
nmap <Leader>e :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

set nocompatible
filetype off
call plug#begin()
Plug 'cocopon/iceberg.vim'
Plug 'thinca/vim-fontzoom'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
call plug#end()


filetype plugin indent on 
