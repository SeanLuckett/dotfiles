"Return TRUE if in the middle of {} or () in INSERT mode
function! BreakLine()
  if (mode() == 'i')
    return ((getline(".")[col(".")-2] == '{' && getline(".")[col(".")-1] == '}') ||
          \(getline(".")[col(".")-2] == '(' && getline(".")[col(".")-1] == ')'))
  else
    return 0
  endif
endfun

" Remap <Enter> to split the line and insert a new line in between if
" BreakLine return True
inoremap <expr> <CR> BreakLine() ? "<CR><ESC>O" : "<CR>"

""""""""""""""""""""
" Syntastic Settings
""""""""""""""""""""
let g:syntastic_javascript_checkers = ['jshint']
" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'all'}
let g:syntastic_auto_loc_list=0 " disable show automatically and close when
" no errors are found
let g:syntastic_loc_list_height=5

highlight link SyntasticError SpellBad
highlight link SyntasticWarning SpellCap

" Remap <Enter> to split the line and insert a new line in between if
" BreakLine return True
inoremap <expr> <CR> BreakLine() ? "<CR><ESC>O" : "<CR>"

