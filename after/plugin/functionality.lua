-- functionality.lua: set editor options

vim.wo.number = true	-- show line numbers

-- don't continue single-line comments onto next line
vim.cmd('autocmd BufEnter * set formatoptions-=cro') 		
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')

