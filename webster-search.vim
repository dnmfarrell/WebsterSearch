let s:parent_dir = expand('<sfile>:p:h')

function! WebsterSearch(term)
  let l:perl_script = 'webster-search.pl'
  let l:command =  s:parent_dir . '/' . l:perl_script . ' ' . a:term
  execute "let output = system('" . l:command . "')"
  vnew
  setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile
  call setline(1, split(output, "\n"))
endfunction
command! -nargs=1 WebsterSearch call WebsterSearch(<args>)
