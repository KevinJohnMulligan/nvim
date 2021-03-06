"---Statusline--------------------------------------------------------------------------------
":set statusline=%<%F\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P


:set statusline=						"initialise an empty statusline
:set statusline+=\ %F						"file name and full path
:set statusline+=%m						"modified or saved
:set statusline+=%=						"shift the rest to the right
:set statusline+=%#CursorColumn#				"highlights the rest of the statusline in a graybox
:set statusline+=\ %y 						"file type
:set statusline+=\ %{&fileencoding?&fileencoding:&encoding}	"file encoding
:set statusline+=\[%{&fileformat}\]				"file format dos/unix
:set statusline+=\ %p%%						"percentage of file
:set statusline+=\ %l:%c					"line:column
:set statusline+=\   
:set laststatus=2  " always display the status line
