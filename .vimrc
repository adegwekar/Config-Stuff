syntax on
colorscheme torte
set autoindent
set smartindent
set tabstop=4
set expandtab
autocmd FileType make setlocal noexpandtab
set shiftwidth=4
set showmatch
set incsearch
set hlsearch
set nu
highlight OverLength ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
