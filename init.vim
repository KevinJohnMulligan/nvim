set statusline=%<%F\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line

call plug#begin('~\AppData\Local\nvim\plugged')
Plug 'vim-scripts/ctrlp.vim'
" Initialize plugin system
call plug#end()

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" turn hybrid line numbers off
:set nonumber norelativenumber
:set nonu nornu

" toggle hybrid line numbers
:set number! relativenumber!
:set nu! rnu!

"Relative line numbers are helpful when moving around in normal mode, but absolute line numbers are more suited for insert mode. When the buffer doesn’t have focus, it’d also be more useful to show absolute line numbers. For example, when running tests from a separate terminal split, it’d make more sense to be able to see which test is on which absolute line number.

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"paste from clipboard in insert mode then leave insert mode
: inoremap <C-v> <esc>"*p
"paste from clipboard in normal mode
: noremap <C-v> "*p

: vnoremap <C-c> "*y
: vnoremap <C-v> "*p
"make ctrl+z undo an action rather than freezing the console indefinitely for
"nvim
: noremap <C-z> u
