require('trouble').setup {
    auto_open = false,
    auto_close = true,
    auto_preview = true,
}

require('ccc').setup {
    highlighter = {
        auto_enable = true,
        lsp = true
    },
    win_ops = {border = 'double'}
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
    fb = {'<cmd>Dirbuf<cr>', 'Browser'},
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
    yp = {'YankyPutAfter', 'Put After'},
    yP = {'YankyPutBefore', 'Put Before'},
    yg = {'YankyGPutAfter', 'GPut After'},
    yG = {'YankyGPutBefore', 'GPut Before'},
    yf = {'YankyCycleForward', 'Cycle Forward'},
    yb = {'YankyCycleBackward', 'Cycle Backward'},

    Q = {'<cmd>qa<cr>', 'Quit'},

    c = {'<cmd>CccPick<cr>', 'Color Picker'},

    l = {'<cmd>Lazy<cr>', 'Lazy'},

    d = {'<cmd>TroubleToggle<cr>', 'Diagnostics'},
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
