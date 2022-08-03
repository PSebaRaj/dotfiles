local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- gopls: LSP for Go
require'lspconfig'.gopls.setup{
	capabilities = capabilities,
	on_attach = function()
		-- Info
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer=0 })

		-- (Neo)Format
		vim.keymap.set("n", "F", "<cmd>Neoformat<cr>", { noremap = true, silent = false })

		-- Movement
		vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, { buffer=0 })
		vim.keymap.set("n", "<Leader>gt", vim.lsp.buf.type_definition, { buffer=0 })
		vim.keymap.set("n", "<Leader>gi", vim.lsp.buf.implementation, { buffer=0 })
		vim.keymap.set("n", "<Leader>gr", vim.lsp.buf.references, { buffer=0 })

		-- Diagnostics
		vim.keymap.set("n", "<Leader>dj", vim.diagnostic.goto_next, { buffer=0 })
		vim.keymap.set("n", "<Leader>dk", vim.diagnostic.goto_prev, { buffer=0 })
		vim.keymap.set("n", "<Leader>dd", "<cmd>Telescope diagnostics<cr>", { buffer=0 })

		-- Rename (USE OVER <Leader>rw and <Leader>ri)
		vim.keymap.set("n", "<Leader>rr", vim.lsp.buf.rename, { buffer=0 })

		-- Code Actions
		vim.keymap.set("n", "<Leader>`", vim.lsp.buf.code_action, { buffer=0 })
	end,
}

-- esline: linter for JavaScript and TypeScript
require'lspconfig'.eslint.setup{
	capabilities = capabilities
}

-- tsserver: typechecker, not linter, for TypeScript
require'lspconfig'.tsserver.setup{
	capabilities = capabilities,
	on_attach = function()
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer=0 })

		-- (Neo)Format
		vim.keymap.set("n", "F", "<cmd>Neoformat prettier<cr>", { noremap = true, silent = false })

		-- Movement
		vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, { buffer=0 })
		vim.keymap.set("n", "<Leader>gt", vim.lsp.buf.type_definition, { buffer=0 })
		vim.keymap.set("n", "<Leader>gi", vim.lsp.buf.implementation, { buffer=0 })
		vim.keymap.set("n", "<Leader>gr", vim.lsp.buf.references, { buffer=0 })

		-- Diagnostics
		vim.keymap.set("n", "<Leader>dj", vim.diagnostic.goto_next, { buffer=0 })
		vim.keymap.set("n", "<Leader>dk", vim.diagnostic.goto_prev, { buffer=0 })
		vim.keymap.set("n", "<Leader>dd", "<cmd>Telescope diagnostics<cr>", { buffer=0 })

		-- Rename (USE OVER <Leader>rw and <Leader>ri)
		vim.keymap.set("n", "<Leader>rr", vim.lsp.buf.rename, { buffer=0 })

		-- Code Actions
		vim.keymap.set("n", "<Leader>`", vim.lsp.buf.code_action, { buffer=0 })
	end,
}
-- Remember to add a tsconfig.json @ root of project

-- PyRight: LSP for Python
require'lspconfig'.pyright.setup{
	capabilities = capabilities,
	on_attach = function()
		-- Info
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer=0 })

		-- (Neo)Format
		vim.keymap.set("n", "F", "<cmd>Neoformat<cr>", { noremap = true, silent = false })

		-- Movement
		vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, { buffer=0 })
		vim.keymap.set("n", "<Leader>gt", vim.lsp.buf.type_definition, { buffer=0 })
		vim.keymap.set("n", "<Leader>gi", vim.lsp.buf.implementation, { buffer=0 })
		vim.keymap.set("n", "<Leader>gr", vim.lsp.buf.references, { buffer=0 })

		-- Diagnostics
		vim.keymap.set("n", "<Leader>dj", vim.diagnostic.goto_next, { buffer=0 })
		vim.keymap.set("n", "<Leader>dk", vim.diagnostic.goto_prev, { buffer=0 })
		vim.keymap.set("n", "<Leader>dd", "<cmd>Telescope diagnostics<cr>", { buffer=0 })

		-- Rename (USE OVER <Leader>rw and <Leader>ri)
		vim.keymap.set("n", "<Leader>rr", vim.lsp.buf.rename, { buffer=0 })

		-- Code Actions
		vim.keymap.set("n", "<Leader>`", vim.lsp.buf.code_action, { buffer=0 })
	end,
}


-- dockerls: LSP for Docker
require'lspconfig'.dockerls.setup{
	capabilities = capabilities
}


capabilities.textDocument.completion.completionItem.snippetSupport = true
-- jsonls: LSP for JSON
require'lspconfig'.jsonls.setup{
	capabilities = capabilities
}
