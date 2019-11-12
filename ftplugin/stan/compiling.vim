" External command file for the Stan probabilistic programming language
" Language: Stan (http://mc-stan.org)
" Maintainer: George Ho (https://eigenfoo.xyz)
" Last Change: November 11, 2019
" Filenames: *.stan
" License: MIT License
" URL: https://github.com/eigenfoo/stan-vim

function! StanCompile()
    silent !clear
    execute "!make -C  " . g:cmdstan_path . " " . bufname("%")
endfunction

if !exists("g:stan_path")
    let g:cmdstan_path = "~/cmdstan/"
endif

nnoremap <buffer> <localleader>c :call StanCompile()<cr>
