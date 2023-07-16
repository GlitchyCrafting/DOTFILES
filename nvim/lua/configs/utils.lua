require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'c',
        'cpp',
        'rust',
        'lua',
        'bash',
        'css',
        'dockerfile',
        'fish',
        'gdscript',
        'gitignore',
        'godot_resource',
        'html',
        'htmldjango',
        'javascript',
        'json',
        'json5',
        'lua',
        'markdown',
        'markdown_inline',
        'python',
        'ron',
        'rst',
        'scss',
        'toml',
        'yaml',
    },
    auto_install = true,
    highlight = {enable = true},
    indent = {enable = true},
    autotag = {enable = true},
}

require('indent_blankline').setup {
    show_current_context = true,
    char = '',
    char_highlight_list = {
        'Normal',
        'Comment',
    },
    space_char_highlight_list = {
        'Normal',
        'Comment',
    },
    show_trailing_blankline_indent = false,
}

require('nvim-autopairs').setup {check_ts = true}
require('cmp').event:on('confirm_done', require('nvim-autopairs.completion.cmp').on_confirm_done())

require('tidy').setup {}

require('fzf-lua').setup {
    winopts = {
        border = 'double',
        winopts = {
            relativenumber = true
        }
    }
}

require('fidget').setup {
    text = {spinner = 'arc'},
    window = {border = 'double'}
}

require('neoclip').setup {}
