" Sections file for the Stan probabilistic programming language
" Language: Stan (http://mc-stan.org)
" Maintainer: George Ho (https://eigenfoo.xyz)
" Last Change: November 10, 2019
" Filenames: *.stan
" License: MIT License
" URL: https://github.com/eigenfoo/stan-vim

function! s:NextSection(backwards)
    let pattern = '\v(\n\n^\S|%^)'
    let flags = 'e'

    if a:backwards
        let dir = '?'
    else
        let dir = '/'
    endif

    execute 'silent normal! ' . dir . pattern . dir . flags . "\r"
endfunction

noremap <script> <buffer> <silent> ]] :call <SID>NextSection(0)<cr>
noremap <script> <buffer> <silent> ][ :call <SID>NextSection(0)<cr>

noremap <script> <buffer> <silent> [[ :call <SID>NextSection(1)<cr>
noremap <script> <buffer> <silent> [] :call <SID>NextSection(1)<cr>
