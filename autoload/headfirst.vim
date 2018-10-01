function! headfirst#complete(lead, ...)
  let lead = a:lead
  let head = expand("%:h")
  let paths = split(globpath(head, lead . "*"), "\n")
  return map(paths, 'substitute(v:val, head . "/", "", "")')
endfunction

function! headfirst#open(cmd, ...) abort
  let files = a:000
  let files = reverse(copy(files))
  for arg in files
    exec a:cmd "%:h/" . arg
  endfor
endfunction
