" Vim syntax file
" Language:		scratch
" Maintainer:	Kacper Kocot <kocotian@kocotian.pl>
" Last Change:	2021 Mar 22

let g:is_vim=1
syntax include @VIM syntax/vim.vim
unlet b:current_syntax

silent! runtime! syntax/vim.vim

let g:is_vimwiki=1
syntax include @VIMWIKI syntax/vimwiki.vim
unlet b:current_syntax

silent! runtime! syntax/vimwiki.vim

syn match scratchComment		display ";;.*"
hi def link scratchComment		Comment

let b:current_syntax = "scratch"

" vim:ft=vim
