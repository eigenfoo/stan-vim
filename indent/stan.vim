" Indentation file for the Stan probabilistic programming language
" Language: Stan (http://mc-stan.org)
" Maintainer: George Ho (https://eigenfoo.xyz)
" Last Change: November 10, 2019
" Filenames: *.stan
" License: MIT License
" URL: https://github.com/eigenfoo/stan-vim

"" Only load this indent file when no other was loaded.
if exists('b:did_indent')
	finish
endif

"" On pressing tab, insert 2 spaces
setlocal expandtab

"" Show existing tabs with 2 spaces
setlocal tabstop=2
setlocal softtabstop=2

"" When indenting with `>`, use 2 spaces
setlocal shiftwidth=2

"" Reindent when the following keys are pressed
setlocal indentkeys+=0=if,0=then,0=else,0\|,0},0\],0),=-},0=in

let b:did_indent = 1
