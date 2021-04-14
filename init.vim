" NoCompatible
set nocompatible        " Must be first line
"set ff=dos              " Fix line ending problem
" Platform identification {
    silent function! OSX()
        return has('macunix')
    endfunction
    silent function! LINUX()
        return has('unix') && !has('macunix') && !has('win32unix')
    endfunction
    silent function! WINDOWS()
        return  (has('win16') || has('win32') || has('win64'))
    endfunction
    silent function! FREEBSD()
      let s:uname = system("uname -s")
      return (match(s:uname, 'FreeBSD') >= 0)
    endfunction
" }

"TODO make these paths more abstract/relative
"
 " Environment {
     " Basics {
         if WINDOWS()
             source .vim/windows.vim
             source .vim/config.vim
	     source .vim/statusline.vim
             "source ~\AppData\Local\nvim\.vim\hardmode.vim  			"remember to disable this at a later stage, especially q

         endif
	"" Basics {
	if LINUX()
 	     source .vim/linux.vim
             source .vim/config.vim
	     source .vim/statusline.vim
             "source /mnt/c/Users/Kevin-Lenovo/AppData/Local/nvim/.vim/hardmode.vim  			"remember to disable this at a later stage, especially q

	    endif
	" }
	"" Basics {
	if OSX()
	     source ~/dotfiles/config/nvim/.vim/macos.vim
             source ~/dotfiles/config/nvim/.vim/config.vim
	     source ~/dotfiles/config/nvim/.vim/statusline.vim
             "source ~/dotfiles/nvim/nvim/.vim/hardmode.vim  			"remember to disable this at a later stage, especially q

	    endif
	" }
	
     " }
" }
