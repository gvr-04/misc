require("config.lazy")

vim.cmd.set("nu rnu shiftwidth=4 tabstop=4 softtabstop=4 smartindent autoindent splitright splitbelow")
vim.cmd.set("encoding=UTF-8 nobackup nowritebackup nocursorline splitright splitbelow")

vim.cmd([[nnoremap <C-h> <C-w>h]])
vim.cmd([[nnoremap <C-j> <C-w>j]])
vim.cmd([[nnoremap <C-k> <C-w>k]])
vim.cmd([[nnoremap <C-l> <C-w>l]])
vim.cmd([[vnoremap <C-c> "+y]])
vim.cmd([[nnoremap <C-t> :Themery <CR>]])
vim.cmd([[nnoremap <C-e> :e <C-R>=expand('%:p:h')<CR><CR>]])

