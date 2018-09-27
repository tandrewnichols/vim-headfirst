function! headfirst#complete(lead, ...)
  let lead = a:lead
  let head = expand("%:h")
  let paths = split(globpath(head, lead . "*"), "\n")
  return map(paths, 'substitute(v:val, head . "/", "", "")')
endfunction

function! headfirst#open(cmd, ...) abort
  for arg in a:000
    exec a:cmd "%:h/" . arg
  endfor
endfunction
