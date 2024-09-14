" visual.vim
" シンタックスハイライト
syntax on
" 行番号表示
set number
" for diagnostic symbols
set signcolumn=number

try
    colorscheme iceberg
    catch
    try
        colorscheme darkblue
        catch
    endtry
endtry

" カーソルのある行のハイライト
set cursorline
" スクロール時のオフセット
set scrolloff=3

set guifont=Cica:h18

if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif

