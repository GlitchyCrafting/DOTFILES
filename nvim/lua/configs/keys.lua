local keys = {
    l = {'<cmd>Lazy<cr>', 'Lazy'},

    b = {'<cmd>lua require("fzf-lua").buffers()<cr>', 'Buffers'},

    f = {name = 'File'},
    ff = {'<cmd>lua require("fzf-lua").files()<cr>', 'Find'},
    fr = {'<cmd>lua require("fzf-lua").oldfiles()<cr>', 'Recent'},
    fn = {'<cmd>enew<cr>', 'New'},
    fs = {'<cmd>up<cr>', 'Save'},
    fd = {'<cmd>DocsViewToggle<cr>', 'Docs'},
    fs = {'<cmd>Dirbuf<cr>', 'Filesystem'},

    p = {'<cmd>lua require("neoclip.fzf")()<cr>', 'Clipboard'},

    d = {'<cmd>TroubleToggle<cr>', 'Diagnostics'},

    g = {name = 'GoTo'},
    gq = {'<cmd>lua require("goto-preview").close_all_win()<cr>', 'Close'},
    gd = {'<cmd>lua require("goto-preview").goto_preview_definition()<cr>', 'Def'},
    gt = {'<cmd>lua require("goto-preview").goto_preview_type_definition()<cr>', 'TypeDef'},
    gi = {'<cmd>lua require("goto-preview").goto_preview_implementation()<cr>', 'Impl'},
    gr = {'<cmd>lua require("goto-preview").goto_preview_references()<cr>', 'Refs'},

    G = {name = 'Grep'},
    Gp = {'<cmd>lua require("fzf-lua").live_grep()<cr>', 'Project'},
    Gg = {'<cmd>lua require("fzf-lua").lgrep_curbuf<cr>', 'File'},
    Gc = {'<cmd>lua require("fzf-lua").commands()<cr>', 'Commands'},
    Gh = {'<cmd>lua require("fzf-lua").search_history()<cr>', 'History'},
    Gs = {'<cmd>lua require("fzf-lua").spell_suggest()<cr>', 'Spelling'},

    c = {'<cmd>CccPick<cr>', 'Color Picker'},

    Q = {'<cmd>qa<cr>', 'Quit'},
}

return keys
