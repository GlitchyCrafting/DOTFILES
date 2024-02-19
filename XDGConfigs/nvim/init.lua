local g          = vim.g
local o          = vim.o
local opt        = vim.opt
local A          = vim.api

o.compatible     = false
o.backspace      = 'eol,indent,start'
o.ruler          = true
o.termguicolors  = true
o.t_Co           = 256
o.timeoutlen     = 0
o.scrolloff      = 5
o.number         = true
o.numberwidth    = 2
o.relativenumber = true
o.signcolumn     = 'yes'
o.cursorline     = true
o.expandtab      = false
o.smarttab       = true
o.cindent        = true
o.autoindent     = true
o.wrap           = true
o.textwidth      = 80
o.tabstop        = 4
o.shiftwidth     = 0
o.softtabstop    = -1
o.formatoptions  = 'rqn1jp'
o.backup         = false
o.writebackup    = true
o.undofile       = true
o.swapfile       = false
o.history        = 50
o.splitright     = true
o.splitbelow     = true
o.foldmethod     = 'expr'
o.foldexpr       = "nvim_treesitter#foldexpr()"
o.foldlevelstart = 99
o.foldnestmax    = 3
o.foldminlines   = 1
o.encoding       = 'utf-8'
o.showbreak      = '+++ '
o.virtualedit    = 'block,onemore'
o.incsearch      = true
opt.mouse        = ""
g.mapleader      = ' '
g.maplocalleader = ' '

local gruff_au = A.nvim_create_augroup('gruff', { clear = true })

A.nvim_create_autocmd('TextYankPost', {
	group = gruff_au,
	callback = function()
		vim.highlight.on_yank({higroup = 'Visual', timeout = 2000})
	end
})

A.nvim_create_autocmd('BufRead', {
	group = gruff_au,
	pattern = {"*.vert", "*.frag", "*.tesc", "*.tese", "*.geom", "*.comp"},
	callback = function()
		vim.bo.filetype = "glsl"
	end
})

require('plugins')
