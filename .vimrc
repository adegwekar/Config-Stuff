syntax on
colorscheme torte
set autoindent
set smartindent
set tabstop=8
set shiftwidth=8
set showmatch
set incsearch
set hlsearch
set nu
set ruler
set nowrap
set nomousehide
set clipboard=autoselect,exclude:.*

autocmd FileType make setlocal
highlight OverLength ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

autocmd VimEnter * set vb t_vb=              " No beeps or flashes.
autocmd! bufwritepost .vimrc source %        " Auto-reload vimrc.
autocmd BufWritePre *.py :%s/\s\+$//e        " Trim trailing whitespace.
execute pathogen#infect()
highlight clear SignColumn
autocmd StdinReadPre * let s:std_in=1
set runtimepath^=~/.vim/bundle/ctrlp.vim
"autocmd vimenter * NERDTree
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary")
