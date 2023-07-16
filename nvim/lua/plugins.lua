local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
	{
		'nvim-lua/plenary.nvim',
		'kyazdani42/nvim-web-devicons',

		'neovim/nvim-lspconfig',
		'ray-x/lsp_signature.nvim',
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',

		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'f3fora/cmp-spell',
		'hrsh7th/nvim-cmp',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		'gelguy/wilder.nvim',
		'Saecki/crates.nvim',
        'onsails/lspkind.nvim',

		'numToStr/Comment.nvim',
		'folke/todo-comments.nvim',
		'f-person/git-blame.nvim',
		'nvim-treesitter/nvim-treesitter',
		'windwp/nvim-ts-autotag',
		'lukas-reineke/indent-blankline.nvim',
		'jghauser/mkdir.nvim',
		'mcauley-penney/tidy.nvim',
		'windwp/nvim-autopairs',
		{'AckslD/nvim-neoclip.lua', requires = {{'kkharji/sqlite.lua', module = 'sqlite'}}},

		{
			'http://gcserver.home:3000/gc/glitchcandy-nvim.git',
			lazy = false,
			priority = 1000,
			config = function ()
				vim.cmd([[colorscheme glitchcandy]])
			end,
		},
		'ibhagwan/fzf-lua',
		'nvim-lualine/lualine.nvim',
        'arkav/lualine-lsp-progress',
		'uga-rosa/ccc.nvim',
		'folke/which-key.nvim',
		'folke/trouble.nvim',
		'elihunter173/dirbuf.nvim',
		'rmagatti/goto-preview',
        'amrbashir/nvim-docs-view',

	},
	{ ui = {border = "double"} }
)

require('configs.lsp')
require('configs.complete')
require('configs.util')
require('configs.ui')
