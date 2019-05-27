function! WebsterSearch(term)
  let command = './webster-search.pl ' . a:term
  execute "let output = system('" . command . "')"
  vnew
  setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile
  call setline(1, split(output, "\n"))
endfunction
command! -nargs=1 WebsterSearch call WebsterSearch(<args>)
