return {
	-- This plugin installs and manages language servers, linters, and formatters
	{
		"williamboman/mason.nvim",
		cmd = "Mason",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end,
	},

	-- This plugin provides a bridge between mason and nvim-lspconfig
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = true,
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
		},
		opts = {
			ensure_installed = {
				"lua_ls",
				"pylsp",
				"ts_ls",
				"jsonls",
				"html",
				"cssls",
				"tailwindcss",
				"rust_analyzer",
				"gopls",
			},
		},
	},

	-- The main LSP configuration
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"saghen/blink.cmp",
		},
		config = function()
			-- Define a function that will be attached to each LSP client
			local on_attach = function(client, bufnr)
				-- Set keymaps that are specific to LSP functionality
				local opts = { silent = true }
				local map = vim.keymap.set
				map("n", "gD", vim.lsp.buf.declaration, opts)
				map("n", "gd", vim.lsp.buf.definition, opts)
				map("n", "K", vim.lsp.buf.hover, opts)
				map("n", "gi", vim.lsp.buf.implementation, opts)
				map("n", "<C-k>", vim.lsp.buf.signature_help, opts)
				map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
				map("n", "gr", vim.lsp.buf.references, opts)
				map("n", "<leader>f", function()
					vim.lsp.buf.format({ async = true })
				end, opts)
			end

			-- setup LSPs here.
			-- This uses the built-in Neovim LSP configuration API.
			-- mason-lspconfig will handle the installation.
			require("mason-lspconfig").setup({
				-- Attach the on_attach function to all automatically configured servers
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({
							on_attach = on_attach,
						})
					end,
					-- Explicitly configure lua_ls with some extra settings
					lua_ls = function()
						require("lspconfig").lua_ls.setup({
							on_attach = on_attach,
							settings = {
								Lua = {
									workspace = {
										checkThirdParty = false,
									},
									telemetry = {
										enable = false,
									},
								},
							},
						})
					end,
				},
			})
		end,
	},
}
