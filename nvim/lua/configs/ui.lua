require('which-key').setup {
    window = {
        border = 'double',
        position = 'top',
    },
    triggers = 'auto',
}
require('which-key').register( require('configs.keys'), {prefix = '<leader>'} )

require('ccc').setup {
    highlighter = {
        auto_enable = true,
        lsp = true,
    }
}

require('trouble').setup {position = 'top'}

require('dirbuf').setup {}

require('goto-preview').setup {border = 'shadow'}

require('docs-view').setup {
    position = 'right',
    width = 60,
}

require('lualine').setup {
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename', 'lsp_progress' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
    }
}
