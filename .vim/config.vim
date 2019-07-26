"---Plugins--------------------------------------------------------------------------------

call plug#begin('~\AppData\Local\nvim\plugged')
Plug 'vim-scripts/ctrlp.vim'
Plug 'morhetz/gruvbox'
" Initialize plugin system
call plug#end()


"---Line numbers--------------------------------------------------------------------------------
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


"---Remap Capslock to be CTRL------------------------------------------------------------
inoremap <CAPS> <C>

"---Paste--------------------------------------------------------------------------------
"paste from clipboard in insert mode then leave insert mode
: inoremap <C-v> <esc>"*p
"paste from clipboard in normal mode
: noremap <C-v> "*p

: vnoremap <C-c> "*y
: vnoremap <C-v> "*p
"make ctrl+z undo an action rather than freezing the console indefinitely for nvim
: noremap <C-z> u

"---Mode colours--------------------------------------------------------------------------------
"change the background colour to indicate current mode
:au InsertEnter * hi Normal term=reverse ctermbg=black guibg=yellow 
:au InsertLeave * hi Normal term=NONE    ctermbg=darkmagenta    guibg=white 
