return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "isort", "black" },
			-- Conform will run the first available formatter
			javascript = { "prettierd", "prettier", stop_after_first = true },

			html = { "prettierd", "prettier", stop_after_first = true },

			docker = { "hadolint" },

			ansible = { "ansible-lint" },

			sql = { "sql-formatter", "sqlfluff", "prettierd", stop_after_first = true },

			markdown = { "prettierd", stop_after_first = true },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
