local builtin = require("telescope.builtin")

--Remap keyboard shortcuts to do fun finding stuff.
-- <leader> is spacebar unless set in `vim.g.mapleader` variable
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({search = vim.fn.input(":Grep > ")})
end)
