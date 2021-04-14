# nvim
 vim.init (NeoVim's equivalent of .vimrc)


 *Modularised files*

**init.vim**
Loads the other files.

**config.vim**  
Most of the configuration happens here.  
***Aesthetic***  
 Insert mode has a black background  
 Normal mode has a darkmagenta background (the same colour as PowerShell)  
***Key Bindings***  
 Various keybindings including  
	- `<Leader> = <Space>`  
	- `<Leader>h` to move to the window on the left (`<Leader>hjkl` are all implemented for window movement)  
	- `<Leader>ev` opens config.vim mnemonic: edit vim  
	- `<Leader>sv` source init.vim mnemonic: source vim  

The files below have been deprecated  
**hardmode.vim**  
Disables arrow keys to make it easier to unlearn inefficent habits that don't help in vim.  

**statusline.vim**  
Creates a statusline at the bottom of a file buffer.  


# Installation/setup  

First install plugins `:PlugInstall`
