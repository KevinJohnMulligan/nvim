"      __   _(_)_ __ ___  _ __ ___
"      \ \ / / | '_ ` _ \| '__/ __|
"       \ V /| | | | | | | | | (__
"        \_/ |_|_| |_| |_|_|  \___|

"       TODO rewrite all comments in the imperative.
"       	'if this line is active it will (comment)'

<<<<<<< HEAD
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

=======
"---Plugins-------------------------------------------------------------------------------

"To install these plugins type :PlugInstall
call plug#begin('~\AppData\Local\nvim\plugged')
Plug 'tpope/vim-repeat'                 "repeat tpope plugins using period .
Plug 'tpope/vim-surround'               "add quotes or parenthesis around a selection
Plug 'tpope/vim-commentary'             "comment/uncomment gcc on lines, gc on motions
Plug 'tpope/vim-unimpaired'             "20 bindings providing useful functionality
Plug 'easymotion/vim-easymotion'        "uses a search, select (by typing),and jump methodology
"Plug 'vim-scripts/ctrlp.vim'           "ctrlP is a fuzzy finder
"Plug 'morhetz/gruvbox'			"gruvbox is a colorscheme
Plug 'w0rp/ale'				"ALE is asynchronous linting - checking syntax
Plug 'scrooloose/nerdtree'		"NERDTree is a 'gui' style directory explorer
Plug 'Xuyuanp/nerdtree-git-plugin'      "adds git status info to the directories
Plug 'mbbill/undotree'                  "<F5> gives a graphical tree of undo history 
"Plug 'severin-lemaignan/vim-minimap'   "adds a minimap like Sublime
Plug 'klen/python-mode'
"Plug 'ycm-core/YouCompleteMe'          "tab autocomplete - requires a local
"server running in the background this allows it to be async
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
>>>>>>> d2629713ccb5892a430061a5a6f9800858fa09c6
" Initialize plugin system
call plug#end()
" }}}

"---Gneral Settings-------------------------------------------------------------------{{{
" Quickly reload this configuration file nm: source my vimrc file 
:nnoremap <Leader>sv :so $MYVIMRC<CR>

" open vertical split that is 90 characters wide, roughly half a screen
" Quickly edit this configuration file nm: edit my vimrc file
":nnoremap <Leader>ev :90vsplit $MYVIMRC/../.vim/config.vim<CR>
:nnoremap <Leader>ev :tabedit $MYVIMRC/../.vim/config.vim<CR>
" Quickly edit vim notes file nm: edit notes
:nnoremap <Leader>en :90vsplit $VIMNOTES<CR>

" toggle all folds in the file
:nnoremap <Leader>Z :set foldlevel=99<CR>

"map <Leader>z toggle the current foldlevel (z not f because of other fold cmds)
nmap <Leader>z za

<<<<<<< HEAD
" use Emacs end of line (overrides: Scroll window [count] line downwards)
:nnoremap <C-e> $
":nnoremap <C-e> internal-end-of-line 
:inoremap <C-e> <Esc>$a
=======
"---General Settings----------------------------------------------------------------------
" Quickly edit/reload this configuration file
" open vertical split that is 90 characters wide, roughly half a screen
:nnoremap gev :90vsplit $MYVIMRC/../.vim/config.vim<CR>
:nnoremap gsv :so $MYVIMRC<CR>
" use Emacs end of line (overrides: Scroll window [count] line downwards)
:nnoremap <C-e> $
":nnoremap <C-e> internal-end-of-line 
":w
:inoremap <C-e> line($) 
>>>>>>> d2629713ccb5892a430061a5a6f9800858fa09c6
:vnoremap <C-e> $
":set showcmd
:set background=dark
:let g:python3_host_prog='C:\Program Files\Python37\python'
:set termencoding=utf-8
:set encoding=utf-8
:set fileencoding=utf-8
:set title
augroup dirchange
    autocmd!
    autocmd DirChanged * let &titlestring=v:event['cwd']
augroup END

:set foldmethod=syntax

<<<<<<< HEAD
" highlight last inserted text
nnoremap gV `[v`]
" general settings }}}

"---Set the Leader key-----------------------------------------------------------------{{{
:map <SPACE> <leader>
" set the leader }}}

"---Window movement and management-----------------------------------------------------{{{
=======
"---Set the Leader key--------------------------------------------------------------------
:map <SPACE> <leader>
"---Window movement and management--------------------------------------------------------
>>>>>>> d2629713ccb5892a430061a5a6f9800858fa09c6
:set splitbelow
:set splitright
:nnoremap <leader>j <C-w>j
:nnoremap <leader>k <C-w>k
:nnoremap <leader>h <C-w>h
:nnoremap <leader>l <C-w>l
<<<<<<< HEAD

:hi TabLineFill guifg=LightGreen guibg=DarkGreen
:hi TabLine guifg=Blue guibg=Yellow
:hi TabLineSel guifg=Red guibg=Yellow
:hi Title guifg=LightBlue guibg=Magenta
" window movement and managment }}}

"---Plugin Settings--------------------------------------------------------------------{{{
=======
"---Plugin Settings-----------------------------------------------------------------------
>>>>>>> d2629713ccb5892a430061a5a6f9800858fa09c6
:let g:ale_sign_column_always = 1	"always show signs in ALE
:let g:NERDTreeShowHidden=1		"always show hidden files and folders in NERDTree
:let g:NERDTreeToggle = '<leader>n'	"<leader>n toggles NERDTree, preserves ctrl+N emacs functionality
:let g:ctrlp_show_hidden=1		"always show hidden files and folders in ctrlP
:let g:ctrlp_map = '<leader>p'          "<leader>p starts ctrlp, preserves ctrl+P emacs functionality
:let g:pymode_rope = 0			"stop pymode rope from hanging Neovim
:let g:pymode_rope_lookup_project = 0	"stop pymode rope from hanging Neovim
:let g:syntastic_python_pylint_post_args="--max-line-length=120" "change the pylinting line limit
:autocmd FileType python set colorcolumn=120
:nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=$HOME."/.undodir"
    set undofile
endif

<<<<<<< HEAD
"---FZF.vim  {{{
=======
>>>>>>> d2629713ccb5892a430061a5a6f9800858fa09c6
"The quintessential fuzzy file finder 
"prefix all Fzf commands scroll through them in the suggestion list
" Z is too difficult to type so just FF for 'fuzzy finder'
let g:fzf_command_prefix = 'FF'
" 'FF' must now be added to the front of all FZF commands

<<<<<<< HEAD
"<Leader>f() find ()
"map <Leader>fg to search for git tracked files, and <Leader>f to search all files*.
nmap <Leader>fg :FFGFiles<CR>
nmap <Leader>ff :FFFiles<CR>
"map <Leader>b to search for open buffers

"map <Leader>h to search buffer history
nmap <Leader>fb :FFBuffers<CR>
nmap <Leader>fh :FFHistory<CR>
=======
"map <Leader>f to search for git tracked files, and <Leader>F to search all files*.
nmap <Leader>f :FFGFiles<CR>
nmap <Leader>F :FFFiles<CR>
"map <Leader>b to search for open buffers
"map <Leader>h to search buffer history
nmap <Leader>b :FFBuffers<CR>
nmap <Leader>H :FFHistory<CR>
>>>>>>> d2629713ccb5892a430061a5a6f9800858fa09c6

"map <Leader>t to search for tags in current buffer
"map <Leader>T to search for tags across project
nmap <Leader>t :FFBTags<CR>
nmap <Leader>T :FFTags<CR>

<<<<<<< HEAD
"map <Leader>fcl 'find current line' to search for lines in current buffer
nmap <Leader>fcl :FFBLines<CR>
"map <Leader>fl 'find lines' to search for lines in loaded buffers
nmap <Leader>fl :FFLines<CR>
"map <Leader>' to search for marked lines
nmap <Leader>' :FFMarks<CR>

" fzf.vim }}}
" plugins }}}

"---Line numbers-----------------------------------------------------------------------{{{
=======
"map <Leader>cl to search for lines in current buffer
nmap <Leader>cl :FFBLines<CR>
"map <Leader>L to search for lines in loaded buffers
nmap <Leader>L :FFLines<CR>
"map <Leader>' to search for marked lines
nmap <Leader>' :FFMarks<CR>

"---Line numbers--------------------------------------------------------------------------
>>>>>>> d2629713ccb5892a430061a5a6f9800858fa09c6
" turn hybrid line numbers on
:set number relativenumber

"Relative line numbers are helpful when moving around in normal mode, but absolute line numbers are more suited for insert mode.

:augroup numbertoggle
:autocmd!
:autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
" line numbers }}}

<<<<<<< HEAD
"---Add shortcut to run python-------------------------------------------------------{{{
=======

"---NERDTreeToggle------------------------------------------------------------------------
"changed to <leader>n in Plugin Settings
"CTRL + N toggles NERDTree
":nmap <C-n> :NERDTreeToggle<CR>       

"---Add shortcut to [r]un python----------------------------------------------------------
>>>>>>> d2629713ccb5892a430061a5a6f9800858fa09c6
":noremap <leader>r :w !python<Enter>
:noremap <C-b> :w !python<Enter>
:inoremap <C-b> <Esc>:w !python<Enter>
" binding for python}}}

<<<<<<< HEAD
"---Copy Paste Undo like MS Windows----------------------------------------------------{{{
=======

"---Copy Paste Undo like MS Windows-------------------------------------------------------
>>>>>>> d2629713ccb5892a430061a5a6f9800858fa09c6
"paste from clipboard in insert mode then leave insert mode
: inoremap <C-v> <esc>"*p
"paste from clipboard in normal mode
: nnoremap <C-v> "*p
<<<<<<< HEAD
"paste from clipboard in command mode
: cnoremap <C-v> <C-r>*
=======

"paste from clipboard in command mode
: cnoremap <C-v> <C-r>"*p
>>>>>>> d2629713ccb5892a430061a5a6f9800858fa09c6

"copy to windows clipboard in visual mode
: vnoremap <C-c> "*y
: vnoremap <C-v> "*p

"make ctrl+z undo an action rather than freezing the console indefinitely for nvim
"normal vim behaviour for ctrl+z would be to put the process in the background
"and show the terminal that it was run from
: noremap <C-z> u
" MS Windows compatibility}}}

<<<<<<< HEAD
"---Mode colours-----------------------------------------------------------------------{{{
"change the background color to indicate current mode
"
:let $NVIM_TUI_ENABLE_TRUE_COLOR=1
:au InsertEnter * highlight Normal term=reverse guibg=black guifg=white guibg=black "guibg=black
":au InsertEnter * highlight Normal term=reverse guibg=#8B008B      guifg=white guibg=black " guibg=black
:au InsertLeave * highlight Normal term=NONE    guibg=darkmagenta    guifg=white guibg=#101050

:highlight Normal guibg=#101050 guifg=white"
:syntax enable
" mode colors }}}

"---Plugin Help Tags--------------------------------------------------------------------{{{
=======
"---Mode colours--------------------------------------------------------------------------
"change the background color to indicate current mode
"
:let $NVIM_TUI_ENABLE_TRUE_COLOR=1
:au InsertEnter * highlight Normal term=reverse ctermbg=black guifg=white guibg=black "guibg=black
":au InsertEnter * highlight Normal term=reverse ctermbg=#8B008B      guifg=white guibg=black " guibg=black
:au InsertLeave * highlight Normal term=NONE    ctermbg=darkmagenta    guifg=white guibg=#101050

:highlight Normal guibg=#101050 guifg=white"
:syntax enable 
"---Plugin Help Tags-----------------------------------------------------------------------
>>>>>>> d2629713ccb5892a430061a5a6f9800858fa09c6
" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
" Plugin help tags}}}

:set modelines=1
" vim:foldmethod=marker:foldlevel=0
