require('mason').setup { ui = {border = 'double'} }

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    return require('virtualtypes').on_attach
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = {
    'html',
    'cssls',
    'bashls',
    'cmake',
    'marksman',
    'lua_ls',
    'pyright',
    'gdscript',
}

for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = {debounce_text_changes = 150}
    }
end

require('lspconfig').clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {
        'clangd',
        '--background-index',
        '--pch-storage=memory',
        '--clang-tidy',
        '--suggest-missing-includes',
        '--all-scopes-completion',
        '--pretty',
        '--header-insertion=never',
        '-j=8',
        '--header-insertion-decorators',
    },
    filetypes = { 'c', 'h', 'cpp', 'hpp' },
    root_dir = require('lspconfig').util.root_pattern('.git', 'compile_commands.json', 'compile_flags.txt')
}

require('lspconfig').glsl_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "glsl_analyzer" },
    filetypes = { 'glsl', 'vert', 'frag', 'tesc', 'tese', 'geom', 'comp' },
}

require('lspconfig').rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        ['rust-analyzer'] = {
            imports = {
                granularity = {group = 'module'},
                prefix = self,
            },
            cargo = { buildScripts = {enable = true} },
            procMacro = {enable = true}
        }
    },
    filetypes = { 'rs', 'rust' },
}

require('lspconfig').html.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'html', 'hxml', 'htmx', 'tera', 'hbs'},
}

require('lspconfig').omnisharp.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'cs', 'vb'},
    cmd = {
        'omnisharp',
        '-lsp'
    }
}
