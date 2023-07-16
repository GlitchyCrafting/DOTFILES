require('mason').setup { ui = {border = 'double'} }

require('lsp_signature').setup {
    hint_prefix = "",
    floating_window = true,
    bind = true,
    handler_opts = {border = 'double'},
}

local lsp = require('lspconfig')

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        ['rust-analyzer'] = {
            imports = {
                granularity = {group = 'module'},
                prefix = self
            },
            cargo = { buildScrips = {enable = true} },
            procMacro = {enable = true},
        }
    },
    filetypes = {'rs', 'rust'},
}

lsp.clangd.setup {
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
        '--inlay-hints',
        '--header-insertion-decorators',
        '-j=8',
    },
    filetypes = {'c', 'h', 'cpp', 'hpp', 'objc', 'objcpp'},
}

lsp.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'py'},
}

lsp.gdscript.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'gd', 'gdscript'},
}

lsp.lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'lua'},
}

lsp.html.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'html', 'xhtml'},
}

lsp.cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'css', 'scss', 'less'},
}

lsp.dockerls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'dockerfile'},
}

lsp.marksman.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'md', 'markdown'},
}

lsp.jsonls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'json', 'jsonc'},
}

lsp.yamlls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'yaml', 'yml'},
}

lsp.taplo.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'toml'}
}
