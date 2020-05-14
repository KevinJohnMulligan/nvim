"      __   _(_)_ __ ___  _ __ ___
"      \ \ / / | '_ ` _ \| '__/ __|
"       \ V /| | | | | | | | | (__
"        \_/ |_|_| |_| |_|_|  \___|

"       TODO rewrite all comments in the imperative.
"       	'if this line is active it will (comment)'

"---Plugins----------------------------------------------------------------------------{{{

"To install these plugins type :PlugInstall
call plug#begin('~\AppData\Local\nvim\plugged')
"repeat tpope plugins using period .
Plug 'tpope/vim-repeat'                 
"add quotes or parenthesis around a selection
Plug 'tpope/vim-surround'               
"comment/uncomment gcc on lines, gc on motions
Plug 'tpope/vim-commentary'             
"20 bindings providing useful functionality
Plug 'tpope/vim-unimpaired'             
"uses a search, select (by typing),and jump methodology
Plug 'easymotion/vim-easymotion'        
"gruvbox is a colorscheme
Plug 'morhetz/gruvbox'			
"ALE is asynchronous linting - checking syntax
Plug 'w0rp/ale'				
"NERDTree is a 'gui' style directory explorer
Plug 'scrooloose/nerdtree'		
"adds git status info to the directories
Plug 'Xuyuanp/nerdtree-git-plugin'      
"<F5> gives a graphical tree of undo history 
Plug 'mbbill/undotree'                  
"adds a minimap like Sublime
"Plug 'severin-lemaignan/vim-minimap'   
Plug 'klen/python-mode'
"tab autocomplete - requires a local server running in the background
"this server allows it to run asynchronously 
"Plug 'ycm-core/YouCompleteMe'          
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()
" }}}

"---General Settings-------------------------------------------------------------------{{{
" Quickly reload this configuration file nm: source my vimrc file 
nnoremap <Leader>sv :so $MYVIMRC<CR>

" open vertical split that is 90 characters wide, roughly half a screen
" Quickly edit this configuration file nm: edit my vimrc file
nnoremap <Leader>ev :90vsplit $MYVIMRC/../.vim/config.vim<CR>
" Quickly edit vim notes file nm: edit notes
nnoremap <Leader>en :90vsplit $VIMNOTES<CR>

" toggle [a]ll folds in the file
nnoremap <leader>a :call FoldLevelToggle()<cr>

function! FoldLevelToggle()
    if &foldlevel
        set foldlevel=0
    else
        set foldlevel=4
    endif
endfunction

"map <Leader>z toggle the current foldlevel (z not f because of other fold cmds)
nmap <Leader>z za

" use Emacs end of line (overrides: Scroll window [count] line downwards)
nnoremap <C-e> $
inoremap <C-e> <Esc>$a
vnoremap <C-e> $
":set showcmd
set background=dark
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set title
augroup dirchange
    autocmd!
    autocmd DirChanged * let &titlestring=v:event['cwd']
augroup END

set foldmethod=syntax

" highlight last inserted text
nnoremap gV `[v`]
" general settings }}}

"---Set the Leader key-----------------------------------------------------------------{{{
map <SPACE> <leader>
" set the leader }}}

"---Window movement and management-----------------------------------------------------{{{
set splitbelow
set splitright
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l

" window movement and managment }}}

"---Plugin Settings--------------------------------------------------------------------{{{
let g:ale_sign_column_always = 1	"always show signs in ALE
let g:NERDTreeShowHidden=1		"always show hidden files and folders in NERDTree
let g:NERDTreeToggle = '<leader>n'	"<leader>n toggles NERDTree, preserves ctrl+N emacs functionality
let g:python3_host_prog='C:\Program Files\Python37\python'
let g:pymode_options_colorcolumn = 0   
filetype plugin on
filetype indent on
let g:pymode_rope = 0			"stop pymode rope from hanging Neovim
let g:pymode_rope_lookup_project = 0	"stop pymode rope from hanging Neovim
let g:syntastic_python_pylint_post_args="--max-line-length=120" "change the pylinting line limit
autocmd FileType python set colorcolumn=120
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=$HOME."/.undodir"
    set undofile
endif

"---FZF.vim  {{{
"The quintessential fuzzy file finder 
"prefix all Fzf commands scroll through them in the suggestion list
" Z is too difficult to type so just FF for 'fuzzy finder'
let g:fzf_command_prefix = 'FF'
" 'FF' must now be added to the front of all FZF commands

"<Leader>f() find ()
"map <Leader>fg to search for git tracked files, and <Leader>f to search all files*.
nmap <Leader>fg :FFGFiles<CR>
nmap <Leader>ff :FFFiles<CR>
"map <Leader>b to search for open buffers

"map <Leader>h to search buffer history
nmap <Leader>fb :FFBuffers<CR>
nmap <Leader>fh :FFHistory<CR>

"map <Leader>t to search for tags in current buffer
"map <Leader>T to search for tags across project
nmap <Leader>t :FFBTags<CR>
nmap <Leader>T :FFTags<CR>

"map <Leader>fcl 'find current line' to search for lines in current buffer
nmap <Leader>fcl :FFBLines<CR>
"map <Leader>fl 'find lines' to search for lines in loaded buffers
nmap <Leader>fl :FFLines<CR>
"map <Leader>' to search for marked lines
nmap <Leader>' :FFMarks<CR>

" fzf.vim }}}
" plugins }}}

"---Line numbers-----------------------------------------------------------------------{{{
" turn hybrid line numbers on
:set number relativenumber

"Relative line numbers are helpful when moving around in normal mode, but absolute line numbers are more suited for insert mode.

augroup numbertoggle
autocmd!
autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
" line numbers }}}

"---Add shortcut to run python-------------------------------------------------------{{{
":noremap <leader>r :w !python<Enter>
noremap <C-b> :w !python<Enter>
inoremap <C-b> <Esc>:w !python<Enter>
" binding for python}}}

"---Copy Paste Undo like MS Windows----------------------------------------------------{{{
"paste from clipboard in insert mode then leave insert mode
inoremap <C-v> <esc>"*p
"paste from clipboard in normal mode
nnoremap <C-v> "*p
"paste from clipboard in command mode
cnoremap <C-v> <C-r>*

"copy to windows clipboard in visual mode
vnoremap <C-c> "*y
vnoremap <C-v> "*p

"make ctrl+z undo an action rather than freezing the console indefinitely for nvim
"normal vim behaviour for ctrl+z would be to put the process in the background
"and show the terminal that it was run from
noremap <C-z> u
" MS Windows compatibility}}}

"---Mode colours-----------------------------------------------------------------------{{{
"change the background color to indicate current mode
"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
au InsertEnter * highlight Normal term=reverse guifg=#10105 guifg=white guibg=black 
":au InsertEnter * highlight Normal term=reverse guibg=#8B008B      guifg=white guibg=black " guibg=black
au InsertLeave * highlight Normal term=NONE    guifg=darkmagenta    guifg=white guibg=#101050

highlight Normal guibg=#101050 guifg=white"
syntax enable
" mode colors }}}

"---Plugin Help Tags--------------------------------------------------------------------{{{
" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
" Plugin help tags}}}

set modelines=1
" vim:foldmethod=marker:foldlevel=0
