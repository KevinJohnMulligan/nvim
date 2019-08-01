"---Plugins--------------------------------------------------------------------------------

call plug#begin('~\AppData\Local\nvim\plugged')
Plug 'vim-scripts/ctrlp.vim'            "ctrlP is a fuzzy finder
"Plug 'morhetz/gruvbox'                 "gruvbox is a colorscheme
Plug 'w0rp/ale'				"ALE is asynchronous linting - checking syntax
Plug 'scrooloose/nerdtree'		"NERDTree is a 'gui' style directory explorer
Plug 'Xuyuanp/nerdtree-git-plugin'     "adds git status info to the directories
"Plug 'ycm-core/YouCompleteMe'          "tab autocomplete - requires a local
"server running in the background
" Initialize plugin system
call plug#end()

""---General Settings----------------------------------------------------------------------------
:set encoding=utf-8
":set showcmd

"---Plugin Settings-----------------------------------------------------------------------------
:let g:ale_sign_column_always = 1     "always show signs in ALE
:let NERDTreeShowHidden=1             "always show hidden files and folders in NERDTree
:let g:ctrlp_show_hidden=1            "always show hidden files and folders in ctrlP

"---Line numbers--------------------------------------------------------------------------------
" turn hybrid line numbers on
:set number relativenumber

"Relative line numbers are helpful when moving around in normal mode, but absolute line numbers are more suited for insert mode.

:augroup numbertoggle
:autocmd!
:autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


"---NERDTreeToggle------------------------------------------------------------------------------
"CTRL + N toggles NERDTree
:nmap <C-n> :NERDTreeToggle<CR>       

"---Add shortcut to [r]un python----------------------------------------------------------------
":noremap <leader>r :w !python<Enter>
:noremap <C-b> :w !python<Enter>
:inoremap <C-b> <Esc>:w !python<Enter>


"---Copy Paste Undo like MS Windows-------------------------------------------------------------
"paste from clipboard in insert mode then leave insert mode
: inoremap <C-v> <esc>"*p
"paste from clipboard in normal mode
: noremap <C-v> "*p

"copy to windows clipboard in visual mode
: vnoremap <C-c> "*y
: vnoremap <C-v> "*p
"make ctrl+z undo an action rather than freezing the console indefinitely for nvim
: noremap <C-z> u

"---Mode colours--------------------------------------------------------------------------------
"change the background colour to indicate current mode
:au InsertEnter * highlight Normal term=reverse ctermbg=black guibg=black guifg=white"
:au InsertLeave * highlight Normal term=NONE    ctermbg=darkmagenta    guibg=#101050 guifg=white" 

:highlight Normal guibg=#101050 guifg=white"
:syntax enable 
"---Plugin Help Tags----------------------------------------------------------------------------
" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
