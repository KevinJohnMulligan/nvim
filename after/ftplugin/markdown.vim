" treat .md as markdown
au BufRead,BufNewFile *.md set filetype=markdown

" j and k act consistently even if line wrap is enabled (normally use gj and gk)
noremap <expr> j v:count == 0 ? 'gj' : 'j'
noremap <expr> k v:count == 0 ? 'gk' : 'k'
set wrap
set textwidth=120
set linebreak 
set nolist 
"set textwidth=0 
set wrapmargin=0
echom "this is an MD file"
