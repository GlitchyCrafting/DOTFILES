local plugins = {
    'nvim-lua/plenary.nvim',
    'kyazdani42/nvim-web-devicons',
    'ibhagwan/fzf-lua',

    'neovim/nvim-lspconfig',
    'ray-x/lsp_signature.nvim',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'arkav/lualine-lsp-progress',

    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'f3fora/cmp-spell',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'onsails/lspkind.nvim',
    'Saecki/crates.nvim',

    'nvim-treesitter/nvim-treesitter',
    'windwp/nvim-ts-autotag',
    'lukas-reineke/indent-blankline.nvim',
    'windwp/nvim-autopairs',
    'mcauley-penney/tidy.nvim',
    {'j-hui/fidget.nvim', tag = 'legacy'},
    'jghauser/mkdir.nvim',
    {'AckslD/nvim-neoclip.lua', requires = {{'kkharji/sqlitle.lua', module = 'sqlite'}}},

    {
        "http://gcserver.home:3000/gc/glitchcandy-nvim.git",
        lazy = false,
        priority = 1000,
        config = function ()
            vim.cmd([[colorscheme glitchcandy]])
        end,
    },
    'nvim-lualine/lualine.nvim',
    'folke/which-key.nvim',
    'uga-rosa/ccc.nvim',
    'folke/trouble.nvim',
    'elihunter173/dirbuf.nvim',
    'rmagatti/goto-preview',
    'amrbashir/nvim-docs-view',

}

return plugins
