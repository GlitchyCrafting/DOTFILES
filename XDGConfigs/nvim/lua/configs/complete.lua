local cmp = require('cmp')
local luasnip = require('luasnip')

require('crates').setup { popup = {border = 'double'} }

local function has_words_before()
	unpack = unpack or table.unpack
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col): match("%s") == nil
end

cmp.setup {
	enabled = {
		function()
			local context = require('cmp.config.context')
			if vim.api.nvim_get_mode().mode == 'c' then
				return true
			else
				return not context.in_treesitter_capture("comment")
					and not context.in_syntax_group("Comment")
			end
		end
	},
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = {
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete()),
		['<C-e>'] = cmp.mapping({ i = cmp.mapping.abort(), c = cmp.mapping.close(), }),
		['<Tab>'] = cmp.mapping(
			function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				elseif luasnip.expand_or_jumpable() then
					luasnip.expand_or_jump()
				elseif has_words_before() then
					cmp.complete()
				else
					fallback()
				end
			end, { "i", "s" }
		),
		['<S-Tab>'] = cmp.mapping(
			function(fallback)
				if cmp.visible() then
					cmp.select_prev_item()
				elseif luasnip.jumpable(-1) then
					luasnip.jump(-1)
				else
					fallback()
				end
			end, { "i", "s" }
		),
		['<S-CR>'] = cmp.mapping.confirm({
			i = function(fallback)
				if cmp.visible and cmp.get_active_entry() then
					cmp.confirm({
						behavior = cmp.ConfirmBehavior.Replace,
						select = false
					})
				else
					fallback()
				end
			end,
			s = cmp.mapping.confirm({ select = true }),
			c = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Replace,
				select = true
			}),
		}),
	},
	sources = cmp.config.sources ({
		{name = 'nerdfont'},
		{name = 'emoji'},
		{name = 'nvim_lua'},
		{name = 'crates'},
		{name = 'luasnip'},
		{name = 'nvim_lsp'},
		{name = 'nvim_lsp_signature_help'},
		{name = 'async_path'},
		{name = 'treesitter'},
		{
			name = "cmp_yanky",
			option = {
				onlyCurrentFiletype = true,
			},
		},
	}, {
			{name = 'buffer'},
		}),
	formatting = { format = require('lspkind').cmp_format('symbol_text') },
	view = {docs = { auto_open = true }},
	experimental = { ghost_text = true }
}

cmp.setup.cmdline({'/', '?'}, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{name = 'buffer'}
	}
})

cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{name = 'path'}
	},
		{
			{name = 'cmdline'}
		})
})

cmp.event:on('confirm_done', require('nvim-autopairs.completion.cmp').on_confirm_done())
