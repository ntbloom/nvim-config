-- init.lua

----------------------
-- LAZY.NVIM config --
----------------------

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
    -- add your plugins here
    spec = {
"nvim-lua/plenary.nvim",
	{"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate"
	},
	{"nvim-telescope/telescope.nvim", 
		tag = '0.1.6', 
		requires = { 
			{"nvim-lua/plenary.nvim"}
		}
	},
	{"ThePrimeagen/harpoon", 
		branch = "harpoon2",
		dependencies = {
			"nvim-lua/plenary.nvim"
		}
	},
	{"mbbill/undotree"},
	{"tpope/vim-fugitive"},

	--lsp configuration
        {"neovim/nvim-lspconfig"}, --lsp configs
        {"hrsh7th/cmp-nvim-lsp"}, -- autocompletion
        {"hrsh7th/nvim-cmp"}, --additional autocompletion
        {"L3MON4D3/LuaSnip", --snippet engine
		version = "v2.*", 
		build = "make install_jsregexp", 
		dependencies = {
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets'
		}
	}, 
        {"williamboman/mason.nvim"}, --lsp package manager
        {"williamboman/mason-lspconfig.nvim"}, --lsp package manager configs	
	--color scheme 
	{'rebelot/kanagawa.nvim'},
    },
    
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    install = { colorscheme = { "habamax" } },
    
    -- automatically check for plugin updates
    checker = { enabled = true },
})
------------------------
-- END LAZYVIM CONFIG --
------------------------

