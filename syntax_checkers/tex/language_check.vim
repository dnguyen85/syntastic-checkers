"============================================================================
"File:        language_check.vim
"Description: Grammar checker (https://github.com/myint/language-check)
"Authors:     Steven Myint <git@stevenmyint.com>
"             Danh Nguyen <danh@dnguyen.io>
"
"============================================================================

if exists('g:loaded_syntastic_tex_language_check_checker')
    finish
endif
let g:loaded_syntastic_tex_language_check_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_tex_language_check_GetLocList() dict
    let makeprg = self.makeprgBuild({})

    let errorformat =
        \ '%f:%l:%c: %m'

    return SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat,
        \ 'subtype': 'Style',
        \ 'returns': [0, 2] })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'tex',
    \ 'name': 'language_check',
    \ 'exec': 'language-check'})

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set sw=4 sts=4 et fdm=marker:
