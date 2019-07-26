"---Statusline--------------------------------------------------------------------------------
":set statusline=%<%F\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P


:set statusline=
:set statusline+=%#PmenuSel#					"unknown
:set statusline+=%#LineNr#					"unknown
:set statusline+=%#CursorColumn#				"unknown
:set statusline+=\ %F						"file name and full path
:set statusline+=%m\						"modified or saved
:set statusline+=%=						"unknown
:set statusline+=%#CursorColumn#				"highlights the rest of the statusline in a graybox
:set statusline+=\ %y 						"file type
:set statusline+=\ %{&fileencoding?&fileencoding:&encoding}	"file encoding
:set statusline+=\[%{&fileformat}\]				"file format dos/unix
:set statusline+=\ %p%%						"percentage of file
:set statusline+=\ %l:%c					"line:column
:set statusline+=\   
:set laststatus=2  " always display the status line


