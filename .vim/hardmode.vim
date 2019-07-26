"This file helps me to unlearn unuseful habits such as using arrow keys and
"pressing q accidently when trying to quit

"Disable recording and remind myself how to turn it off in future when I
"re-enable it
map q <Nop> :echoerr 'PRESS Q AGAIN TO TURN OFF RECORDING'<CR>

"Disable arrow keys and give an error
noremap <up>    :echoerr 'USE K TO GO UP ↑'<CR>
noremap <down>  :echoerr 'USE J TO GO DOWN ↓'<CR>
noremap <left>  :echoerr 'USE H TO GO LEFT ←'<CR>
noremap <right> :echoerr 'USE L TO GO RIGHT →'<CR>
inoremap <up>    <ESC>:echoerr 'USE K TO GO UP'<CR>
inoremap <down>  <ESC>:echoerr 'USE J TO GO DOWN'<CR>
inoremap <right> <ESC>:echoerr 'USE L TO GO RIGHT'<CR>
inoremap <left>  <ESC>:echoerr 'USE H TO GO LEFT'<CR>
