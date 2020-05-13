"      __   _(_)_ __ ___  _ __ ___
"      \ \ / / | '_ ` _ \| '__/ __|
"       \ V /| | | | | | | | | (__
"        \_/ |_|_| |_| |_|_|  \___|

"       TODO rewrite all comments in the imperative.
"       	'if this line is active it will (comment)'

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
" Initialize plugin system
call plug#end()

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

"---Set the Leader key--------------------------------------------------------------------
:map <SPACE> <leader>
"---Window movement and management--------------------------------------------------------
:set splitbelow
:set splitright
:nnoremap <leader>j <C-w>j
:nnoremap <leader>k <C-w>k
:nnoremap <leader>h <C-w>h
:nnoremap <leader>l <C-w>l
"---Plugin Settings-----------------------------------------------------------------------
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

"The quintessential fuzzy file finder 
"prefix all Fzf commands scroll through them in the suggestion list
" Z is too difficult to type so just FF for 'fuzzy finder'
let g:fzf_command_prefix = 'FF'
" 'FF' must now be added to the front of all FZF commands

"map <Leader>f to search for git tracked files, and <Leader>F to search all files*.
nmap <Leader>f :FFGFiles<CR>
nmap <Leader>F :FFFiles<CR>
"map <Leader>b to search for open buffers
"map <Leader>h to search buffer history
nmap <Leader>b :FFBuffers<CR>
nmap <Leader>H :FFHistory<CR>

"map <Leader>t to search for tags in current buffer
"map <Leader>T to search for tags across project
nmap <Leader>t :FFBTags<CR>
nmap <Leader>T :FFTags<CR>

"map <Leader>cl to search for lines in current buffer
nmap <Leader>cl :FFBLines<CR>
"map <Leader>L to search for lines in loaded buffers
nmap <Leader>L :FFLines<CR>
"map <Leader>' to search for marked lines
nmap <Leader>' :FFMarks<CR>

"---Line numbers--------------------------------------------------------------------------
" turn hybrid line numbers on
:set number relativenumber

"Relative line numbers are helpful when moving around in normal mode, but absolute line numbers are more suited for insert mode.

:augroup numbertoggle
:autocmd!
:autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


"---NERDTreeToggle------------------------------------------------------------------------
"changed to <leader>n in Plugin Settings
"CTRL + N toggles NERDTree
":nmap <C-n> :NERDTreeToggle<CR>       

"---Add shortcut to [r]un python----------------------------------------------------------
":noremap <leader>r :w !python<Enter>
:noremap <C-b> :w !python<Enter>
:inoremap <C-b> <Esc>:w !python<Enter>


"---Copy Paste Undo like MS Windows-------------------------------------------------------
"paste from clipboard in insert mode then leave insert mode
: inoremap <C-v> <esc>"*p
"paste from clipboard in normal mode
: nnoremap <C-v> "*p

"paste from clipboard in command mode
: cnoremap <C-v> <C-r>"*p

"copy to windows clipboard in visual mode
: vnoremap <C-c> "*y
: vnoremap <C-v> "*p
"make ctrl+z undo an action rather than freezing the console indefinitely for nvim
"normal vim behaviour for ctrl+z would be to put the process in the background
"and show the terminal that it was run from
: noremap <C-z> u

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
" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
