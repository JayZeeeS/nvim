return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = { auto_install = true },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {"lua_ls", "gopls", "tsserver", "cssls", "pylsp"},
			})
		end,
	},
	{
		"folke/neodev.nvim",
		config = function()
			require("neodev").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            lspconfig.pylsp.setup({
                capabilities = capabilities,
            })
            lspconfig.cssls.setup({
                capabilities = capabilities,
            })
            lspconfig.tsserver.setup({
                capabilities = capabilities,
            })
            lspconfig.html.setup({
                capabilities = capabilities
            })
            lspconfig.gopls.setup({
                capabilities = capabilities,
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })

			local map = vim.keymap.set
			map("n", "K", vim.lsp.buf.hover, {})
			map("n", "gD", vim.lsp.buf.declaration, {})
			map("n", "gd", vim.lsp.buf.definition, {})
			map("n", "gi", vim.lsp.buf.implementation, {})
			map("n", "<C-k>", vim.lsp.buf.signature_help, {})
			map("n", "<leader>D", vim.lsp.buf.type_definition, {})
			map("n", "<leader>rn", vim.lsp.buf.rename, {})
			map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			map("n", "gr", vim.lsp.buf.references, {})
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		config = function()
			require("luasnip").setup()
		end,
	},
}
