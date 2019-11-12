" Autocompletion file for the Stan probabilistic programming language
" Language: Stan (http://mc-stan.org)
" Maintainer: George Ho (https://eigenfoo.xyz)
" Last Change: November 11, 2019
" Filenames: *.stan
" License: MIT License
" URL: https://github.com/eigenfoo/stan-vim

function! SmartTabComplete()
    " From https://vim.fandom.com/wiki/Smart_mapping_for_tab_completion
    let line = getline('.')                         " current line

    let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                    " line to one character right
                                                    " of the cursor

    let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
    if (strlen(substr)==0)                          " nothing to match on empty string
        return "\<tab>"
    endif
    let has_period = match(substr, '\.') != -1      " position of period, if any
    let has_slash = match(substr, '\/') != -1       " position of slash, if any
    if (!has_period && !has_slash)
        return "\<C-X>\<C-P>"                       " existing text matching
    elseif ( has_slash )
        return "\<C-X>\<C-F>"                       " file matching
    else
        return "\<C-X>\<C-O>"                       " plugin matching
    endif
endfunction

" Completion using omni-complete. C-X C-O in Insert mode to activate.
" https://vim.fandom.com/wiki/Completion_using_a_syntax_file
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
                \	if &omnifunc == "" |
                \		setlocal omnifunc=syntaxcomplete#Complete |
                \	endif
endif

" Remap tab to C-X C-O to achieve tab completion.
inoremap <tab> <c-r>=SmartTabComplete()<CR>
