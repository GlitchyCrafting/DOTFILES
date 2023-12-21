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
    auto_install = true,
}
