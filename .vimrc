set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
if has('gui_running')
    set guifont=Monospace\ 11
endif

autocmd FileType make setlocal
highlight OverLength ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"autocmd VimEnter * set vb t_vb=              " No beeps or flashes.
autocmd! bufwritepost .vimrc source %        " Auto-reload vimrc.
autocmd BufWritePre *.py :%s/\s\+$//e        " Trim trailing whitespace.
execute pathogen#infect()
highlight clear SignColumn
autocmd StdinReadPre * let s:std_in=1
set runtimepath^=~/.vim/bundle/ctrlp.vim
"autocmd vimenter * NERDTree
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary")

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation for kernel code only
fun! KernelCode()
    set noexpandtab                         " use tabs, not spaces
    set tabstop=8                           " tabstops of 8
    set shiftwidth=8                        " indents of 8
    set textwidth=78                        " screen in 80 columns wide, wrap at 78
    set cinoptions=:0,l1,t0,g0
endfun
map <leader>k :call KernelCode()<CR>

if getcwd() =~ "kernel"
    call KernelCode()
endif
set keywordprg=git\ show
