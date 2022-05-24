"Automatically wrap text that extends beyond screen length
set wrap

"Encoding
set encoding=utf-8

"Show line numbers
set number

" Status bar
set laststatus=2

"Only be compatible with VIM, not Vi

set nocompatible

"Set filetype plugin on

filetype plugin on

" Syntax on
syntax on 

" Set Markdown for VIMWiki syntax
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

"Auto Install VIM Wiki plugin
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

"Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

