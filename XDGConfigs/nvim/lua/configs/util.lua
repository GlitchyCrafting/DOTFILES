require('Comment').setup {}

require('todo-comments').setup {}

require('nvim-autopairs').setup {}

require('tidy').setup {}

require('yanky').setup {}

require('ibl').setup {
	scope = {
		enabled = true,
		show_start = true,
		show_end = true,
	}
}

require('modicator').setup {
	highlights = {
		defaults = {
			bold = true,
			italic = true,
		}
	},
	integration = {
		lualine = {
			enabled = true,
			mode_section = nil,
			highlight = 'bg',
		}
	}
}

require('nvim-treesitter.configs').setup {
	autotag = {enable = true},
	highlight = {enable = true},
	indent = {enable = true},
	auto_install = true,
}

vim.treesitter.language.register("glsl", "vert")
vim.treesitter.language.register("glsl", "frag")
vim.treesitter.language.register("glsl", "tesc")
vim.treesitter.language.register("glsl", "tese")
vim.treesitter.language.register("glsl", "geom")
vim.treesitter.language.register("glsl", "comp")
