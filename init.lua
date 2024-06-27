-- init.lua

--use lazy plugin for configuration, see `$HOME/.config/nvim/lua/config/lazy.lua`
require('config.lazy')

-- line numbering
vim.opt.nu = true
vim.opt.relativenumber = true

-- set tab spaces to 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.expandtab = false

-- hand off undoing to undotree plugin, may need to revisit?
vim.opt.swapfile = true
vim.opt.backup = false

-- set incremental search. This helps immensly with tricky searches
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- fast update time
vim.opt.updatetime = 50

-- color column to 80 characters
vim.opt.colorcolumn = "88"

-- filetype trigger
vim.opt.filetype='on'

-- set escape to enter normal mode in terminal buffer
vim.keymap.set("t","<esc>",[[<C-\><C-n>]],{silent = true, noremap = true})
vim.api.nvim_set_keymap("n","<leader><leader>term",':belowright split | terminal<CR>',{noremap = true, silent=true})

--- don't continue single-line comments onto next line
vim.cmd('autocmd BufEnter * set formatoptions-=cro') 		
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')
