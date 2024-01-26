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

        'L3MON4D3/LuaSnip',
        'saadparwaiz1_cmp_luasnip',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-cmdline',
		'hrsh7th/nvim-cmp',
        'Saecki/crates.nvim',
        'onsails/lspkind.nvim',
        'ray-x/cmp-treesitter',
        'FelipeLema/cmp-async-path',
        'chrisgrieser/cmp-nerdfont',
        'hrsh7th/cmp-emoji',
        'amarakon/nvim-cmp-fonts',
        'chrisgrieser/cmp_yanky',

		'numToStr/Comment.nvim',
		'folke/todo-comments.nvim',
		'nvim-treesitter/nvim-treesitter',
		'windwp/nvim-ts-autotag',
		'lukas-reineke/indent-blankline.nvim',
		'jghauser/mkdir.nvim',
		'mcauley-penney/tidy.nvim',
		'windwp/nvim-autopairs',
        'mawkler/modicator.nvim',
        'gbprod/yanky.nvim',
        'gpanders/editorconfig.nvim',

		{
			'https://github.com/GlitchyCrafting/glitchcandy-nvim.git',
			lazy = false,
			priority = 1000,
			config = function ()
				vim.cmd([[colorscheme glitchcandy_nvim]])
			end,
		},
        'https://github.com/GlitchyCrafting/glitchcandy-vim.git',
		'ibhagwan/fzf-lua',
		'nvim-lualine/lualine.nvim',
        'arkav/lualine-lsp-progress',
		'uga-rosa/ccc.nvim',
		'folke/which-key.nvim',
		'folke/trouble.nvim',
		'elihunter173/dirbuf.nvim',
	},
	{ ui = {border = "double"} }
)

require('configs.lsp')
require('configs.complete')
require('configs.util')
require('configs.ui')
