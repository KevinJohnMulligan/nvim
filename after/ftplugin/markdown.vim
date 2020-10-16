" treat .md as markdown
au BufRead,BufNewFile *.md set filetype=markdown

" j and k act consistently even if line wrap is enabled (normally use gj and gk)
noremap <expr> j v:count == 0 ? 'gj' : 'j'
noremap <expr> k v:count == 0 ? 'gk' : 'k'

set spell   " MD files are generally linguistic documents after all
set showbreak=…
"set textwidth=0
"set textwidth=120
"set wrapmargin=0
"set wrap
set linebreak " # (optional - breaks by word rather than character)
"set columns=80 " # <<< THIS IS THE IMPORTANT PART


"set nolist 
"set textwidth=0 
echom "This is an MD file."
"===============================================================================
:Goyo 140-50%
" Do what Goyo does and make an empty window next to the .md file
"vsplit 100 100

