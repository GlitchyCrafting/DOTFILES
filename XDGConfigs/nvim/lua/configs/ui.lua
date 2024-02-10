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

require('fzf-lua').setup {
	winopts = {border = 'double'},
}

local wk = require('which-key')
wk.setup {
	window = {border = 'double'},
	triggers = 'auto',
	position = 'top'
}

wk.register({
	b = {'<cmd>lua require("fzf-lua").buffers()<cr>', 'Buffers'},

	f = {name = 'Files'},
	ff = {'<cmd>FzfLua files<cr>', 'Find'},
	fb = {'<cmd>Oil<cr>', 'Browser'},
	fr = {'<cmd>FzfLua oldfiles<cr>', 'Recent'},
	fn = {'<cmd>enew<cr>', 'New'},
	fs = {'<cmd>up<cr>', 'Save Current'},
	fa = {'<cmd>wa<cr>', 'Save All'},

	s = {name = 'Search'},
	sg = {'<cmd>FzfLua lgrep_curbuf<cr>', 'Current Buffer'},
	sp = {'<cmd>FzfLua live_grep_native<cr>', 'Project'},
	sv = {'<cmd>FzfLua grep_visual<cr>', 'Selection'},
	sc = {'<cmd>FzfLua commands<cr>', 'Commands'},
	ss = {'<cmd>FzfLua spell_suggest<cr>', 'Spelling'},
	sq = {'<cmd>FzfLua quickfix<cr>', 'Quick Fix'},
	sC = {'<cmd>FzfLua changes<cr>', 'Changes'},

	l = {name = 'Lsp'},
	lr = {'<cmd>FzfLua lsp_references<cr>', 'Refs'},
	ld = {'<cmd>FzfLua lsp_definitions<cr>', 'Defs'},
	lD = {'<cmd>FzfLua lsp_declarations<cr>', 'Decs'},
	lt = {'<cmd>FzfLua lsp_typedefs<cr>', 'TypeDefs'},
	li = {'<cmd>FzfLua lsp_implementations<cr>', 'Impls'},
	ls = {'<cmd>FzfLua lsp_live_workspace_symbols<cr>', 'Symbols'},
	la = {'<cmd>FzfLua lsp_code_actions<cr>', 'Actions'},
	lf = {'<cmd>FzfLua lsp_finder<cr>', 'Finder'},

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

	h = {'<cmd>FzfLua help_tags<cr>', 'Help'},

	t = {'<cmd>ToggleTerm<cr>', 'Terminal'},

	Q = {'<cmd>qa<cr>', 'Quit'},

	c = {'<cmd>CccPick<cr>', 'Color Picker'},

	L = {'<cmd>Lazy<cr>', 'Lazy'},

	D = {'<cmd>TroubleToggle<cr>', 'Diagnostics'},

	d = {name = 'Dap'},
	db = {'<cmd>DapToggleBreakpoint<cr>', 'Breakpoint'},
	dc = {'<cmd>FzfLua dap_commands<cr>', 'Commands'},
	dC = {'<cmd>FzfLua dap_configuration<cr>', 'Configs'},
	dB = {'<cmd>FzfLua dap_breakpoints<cr>', 'Breakpoints'},
	dv = {'<cmd>FzfLua dap_variables<cr>', 'Variables'},
	df = {'<cmd>FzfLua dap_frames<cr>', 'Frames'},
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
