-- Bootstrap the package manager
local lazypath = vim.fn.stdpath('data') .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        lazypath,
    }
end
vim.opt.rtp = vim.opt.rtp ^ lazypath

-- Init the package manager
local plugins = require('list')
require('lazy').setup (
    plugins,
    {
        install = { colorscheme = {"slate"} },
        ui = { border = "double" }
    }
)

-- Setup plugin configs
require('configs.lsp')
require('configs.completion')
require('configs.utils')
require('configs.ui')
