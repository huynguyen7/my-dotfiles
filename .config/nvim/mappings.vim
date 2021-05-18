" tab completion.
function! InsertTabWrapper(direction)
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  elseif "backward" == a:direction
    return "\<c-p>"
  elseif "forward" == a:direction
    return "\<c-n>"
  else
    return "\<c-x>\<c-k>"
  endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper ("forward")<CR>
inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<CR>
inoremap <c-tab> <c-r>=InsertTabWrapper ("startkey")<CR>

" toggle tab completion
function! ToggleTabCompletion()
  if mapcheck("\<tab>", "i") != ""
    :iunmap <tab>
    :iunmap <s-tab>
    :iunmap <c-tab>
    "echo "tab completion off"
  else
    :imap <tab> <c-n>
    :imap <s-tab> <c-p>
    :imap <c-tab> <c-x><c-l>
    "echo "tab completion on"
  endif
endfunction

map <Leader>tc :call ToggleTabCompletion()<CR>

" toggle background transparent with Control + x
let t:is_transparent = 0                          
function! Toggle_transparent_background()       
  if t:is_transparent == 0                                                     
    hi Normal guibg=#111111 ctermbg=black 
    let t:is_transparent = 1                             
  else                                                          
    hi Normal guibg=NONE ctermbg=NONE                   
    let t:is_transparent = 0                                      
  endif                                         
endfunction   
nnoremap <C-x> :call Toggle_transparent_background()<CR>

" toggle NERDTree with fn + F5
map <F5> :NERDTreeToggle<CR>

" turn off auto-indent with F8
nnoremap <F8> :setl noai nocin nosi inde=<CR>

" execute scripts in nvim
augroup exe_code
    autocmd!
    " Python script
    autocmd FileType python nnoremap <buffer> <localleader>r
        \ :sp<CR> :term /Users/huynguyen/miniforge3/envs/math/bin/python3 %<CR> :startinsert<CR>

augroup END
