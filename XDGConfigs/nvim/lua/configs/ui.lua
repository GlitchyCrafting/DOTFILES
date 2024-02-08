require('trouble').setup {
	auto_open = false,
	auto_close = true,
	auto_preview = true,
	win_config = { border = "double" },
	use_diagnostic_signs = true
}

require('ccc').setup {
	highlighter = {
		auto_enable = true,
		lsp = true,
		update_insert = true,
	},
	win_ops = {border = 'double'},
	mappings = {
		["<left>"] = require('ccc').mapping.decrease,
		["<right>"] = require('ccc').mapping.increase,
	}
}

require("oil").setup {
	default_file_explorer = true,
	columns = {
		"icon",
		"permissions",
		"size",
		"mtime",
	},
	view_options = {
		show_hidden = true,
	}
}

require('toggleterm').setup {
	hide_numbers = true,
	autochdir = true,
	start_in_insert = true,
	direction = 'horizontal',
	auto_scroll = true,
	shell = "/bin/fish",
}

require('fzf-lua').setup { winopts = {border = 'double'} }

local wk = require('which-key')
wk.setup {
	window = {border = 'double'},
	triggers = 'auto',
	position = 'top'
}

wk.register({
	b = {'<cmd>lua require("fzf-lua").buffers()<cr>', 'Buffers'},

	f = {name = 'Files'},
	ff = {'<cmd>lua require("fzf-lua").files()<cr>', 'Find'},
	fb = {'<cmd>Oil<cr>', 'Browser'},
	fr = {'<cmd>lua require("fzf-lua").oldfiles()<cr>', 'Recent'},
	fn = {'<cmd>enew<cr>', 'New'},
	fs = {'<cmd>up<cr>', 'Save Current'},
	fa = {'<cmd>wa<cr>', 'Save All'},

	s = {name = 'Search'},
	sg = {'<cmd>lua require("fzf-lua").lgrep_curbuf()<cr>', 'Current Buffer'},
	sp = {'<cmd>lua require("fzf-lua").live_grep_native()<cr>', 'Project'},
	sr = {'<cmd>lua require("fzf-lua").oldfiles()<cr>', 'Recent Files'},
	sb = {'<cmd>lua require("fzf-lua").buffers()<cr>', 'All Buffers'},
	sc = {'<cmd>lua require("fzf-lua").commands()<cr>', 'Commands'},
	ss = {'<cmd>lua require("fzf-lua").spell_suggest()<cr>', 'Spelling'},

	w = {name = 'Window'},
	wv = {'<C-w>v', 'Vertical Split'},
	wh = {'<C-w>s', 'Horizontal Split'},
	ww = {'<C-w>w', 'Focus Next'},
	wW = {'<C-w>W', 'Focus Previous'},

	y = {name = 'Yanky'},
	yp = {'<cmd>YankyPutAfter<cr>', 'Put After'},
	yP = {'<cmd>YankyPutBefore<cr>', 'Put Before'},
	yg = {'<cmd>YankyGPutAfter<cr>', 'GPut After'},
	yG = {'<cmd>YankyGPutBefore<cr>', 'GPut Before'},
	yf = {'<cmd>YankyCycleForward<cr>', 'Cycle Forward'},
	yb = {'<cmd>YankyCycleBackward<cr>', 'Cycle Backward'},

	t = {'<cmd>ToggleTerm<cr>', 'Terminal'},

	Q = {'<cmd>qa<cr>', 'Quit'},

	c = {'<cmd>CccPick<cr>', 'Color Picker'},

	l = {'<cmd>Lazy<cr>', 'Lazy'},

	d = {'<cmd>TroubleToggle<cr>', 'Diagnostics'},

	D = {'<cmd>lua require("dapui").toggle()<cr>', 'Debug'},
}, {
		mode = {'n', 'v'},
		prefix = '<leader>'
	})

require('lualine').setup {
	sections = {
		lualine_c = {
			{
				'lsp_progress',
				display_components = { 'lsp_client_name', { 'title', 'percentage', 'message' }},
				separators = {
					component = ' ',
					progress = ' | ',
					message = { pre = '(', post = ')'},
					percentage = { pre = '', post = '%% ' },
					title = { pre = '', post = ': ' },
					lsp_client_name = { pre = '[', post = ']' },
					spinner = { pre = '', post = '' },
					message = { commenced = 'In Progress', completed = 'Completed' },
				},
			}
		}
	}
}
