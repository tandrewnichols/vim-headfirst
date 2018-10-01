if exists("g:loaded_headfirst") || &cp | finish | endif

let g:loaded_headfirst = 1

let g:headfirst_VERSION = '1.0.1'

command! -nargs=+ -complete=customlist,headfirst#complete He call headfirst#open('e', <f-args>)
command! -nargs=+ -complete=customlist,headfirst#complete Hedit call headfirst#open('e', <f-args>)
command! -nargs=+ -complete=customlist,headfirst#complete Hsp call headfirst#open('sp', <f-args>)
command! -nargs=+ -complete=customlist,headfirst#complete Hsplit call headfirst#open('sp', <f-args>)
command! -nargs=+ -complete=customlist,headfirst#complete Hvsp call headfirst#open('vsp', <f-args>)
command! -nargs=+ -complete=customlist,headfirst#complete Hvsplit call headfirst#open('vsp', <f-args>)
command! -nargs=+ -complete=customlist,headfirst#complete Htabe call headfirst#open('tabe', <f-args>)
command! -nargs=+ -complete=customlist,headfirst#complete Htabedit call headfirst#open('tabe', <f-args>)
