return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
		"jayp0521/mason-null-ls.nvim", -- ensure dependencies are installed
	},
	config = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting -- to setup formatters
		local diagnostics = null_ls.builtins.diagnostics -- to setup linters

		-- Formatters & linters for mason to install
		require("mason-null-ls").setup({
			ensure_installed = {
				"prettierd", -- TS/JS formatter
				"stylua", -- Lua formatter
				"shfmt", -- Shell formatter
				"ruff", -- Python linter and formatter
				"clang-format", -- C/C++ formatter
				"djlint", -- Django linter and formatter
				"hadolint", -- Dockerfile linter
				"php-cs-fixer", -- PHP formatter
				"phpstan", -- PHP linter
				"goimports", -- Go formatter
			},
			automatic_installation = true,
		})

		local sources = {
			-- HTML/CSS/JS
			formatting.prettierd.with({
				extra_filetypes = { "toml" },
			}),

			-- LUA
			formatting.stylua,

			-- SHELL
			formatting.shfmt.with({ args = { "-i", "4" } }),

			-- PYTHON
			require("none-ls.formatting.ruff").with({ extra_args = { "--extend-select", "I" } }),
			require("none-ls.formatting.ruff_format"),

			-- DJANGO
			diagnostics.djlint,
			formatting.djlint,

			-- C/C++
			formatting.clang_format,

			-- DOCKERFILE
			diagnostics.hadolint,

			-- PHP
			formatting.phpcsfixer,
			diagnostics.phpstan,

			-- GO
			formatting.goimports,
		}

		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		null_ls.setup({
			-- debug = true, -- Enable debug mode. Inspect logs with :NullLsLog.
			sources = sources,
			-- you can reuse a shared lspconfig on_attach callback here
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ async = false })
						end,
					})
				end
			end,
		})
	end,
}
