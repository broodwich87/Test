
"stop trying to act like vi
set nocompatible 

"search down into subfolders
"provides tab-completion for all file-related tasks
set path+=**

"Display all matching files when we tab complete
set wildmenu

"filetype off
set rtp+=~/.vim/bundle/Vundle.vim

"switch buffers without losing info
set hidden

"NETRW Directory Browser

"    Set liststyle to 3 (out of 4 choices)
let g:netrw_liststyle = 3

"remove the banner
let g:netrw_banner = 0

"banner uses vertical split
let g:netrw_browse_split = 4

"sets directory explorer width to 20% of the page
let g:netrw_winsize = 20

let g:netrw_altv = 1

" SNIPPETS:
"read an empty HTML template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>jwf>a
nnoremap gb :ls<CR>:b<Space>
nnoremap ,tree :Vexplore<CR>

"make things pretty
syntax on

"turns on filetype, plugin, and indent
filetype indent plugin on

"Create the 'tags' file(may need to install ctags first)
command! MakeTags !ctags -R .
"now we can:
" - use ^] to jump to tag under cursor
" - use g^] for ambiguous tags
" - use ^t to jump back up the tag stack


call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'

call vundle#end()

au BufNewFile, BufRead *.py, *.c, *.c++, *.cs
  \ set tabstop=4
  \ set fileformat=unix
  \ set softtabstop=4
  \ set shiftwidth=4
  \ set textwidth=79
  \ set expandtab
  \ set autoindent

au BufNewFile, BufRead *.js, *.html, *.css
  \ set tabstop=2
  \ set softtabstop=2
  \ set shiftwidth=2

set foldmethod=indent
set foldlevel=99
set modeline
set encoding=utf-8
set clipboard=unnamed
set nu
let g:syntastic_cpp_checkers = ['gcc']
let python_highlight_all=1
