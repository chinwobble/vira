" File: plugin/vira.vim {{{1
" Description: Internals and API functions for vira
" Authors:
"   n0v1c3 (Travis Gall) <https://github.com/n0v1c3>
" Version: 0.0.1

" Variables {{{1
" Globals {{{2
let g:vira_root_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h') . '/..'
let g:virapy_path = g:vira_root_dir . '/py/vira.py'

" Null issue text {{{3
if !exists('g:vira_null_issue')
  let g:vira_null_issue = 'No Issue Selected'
endif

" Active issue text {{{3
if !exists('g:vira_active_issue')
  let g:vira_active_issue = g:vira_null_issue
endif

" Functions {{{1
" TODO-TJG [190127] - Most of these functions should be commands
function! ViraSetActiveIssue() "{{{2
 call vira#_dropdown()
endfunction

function! ViraGetActiveIssue() "{{{2
  return vira#_get_active_issue()
endfunction

function! ViraInsertComment() "{{{2
  call vira#_insert_comment()
endfunction
function! ViraStatusLine() "{{{2
  return vira#_get_statusline()
endfunction

function! ViraReport() " {{{2
  call vira#_report_buffer_toggle()
endfunction