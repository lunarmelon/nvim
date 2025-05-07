return {
	"stevearc/conform.nvim",
	dependencies = {
		"mason.nvim", -- for managing formatters
	},
	config = function()
		require("conform").setup({
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true, -- uses LSP if no formatter is found
			},
			formatters_by_ft = {
				lua = { "stylua" },
				sh = { "shfmt" },
				python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
				html = { "prettierd" },
				css = { "prettierd" },
				javascript = { "biome", "biome-check", "biome-organize-imports" },
				typescript = { "biome", "biome-check", "biome-organize-imports" },
				javascriptreact = { "biome", "biome-check", "biome-organize-imports" },
				typescriptreact = { "biome", "biome-check", "biome-organize-imports" },
				astro = { "prettierd" },
				svelte = { "prettierd" },
				vue = { "prettierd" },
				json = { "prettierd" },
				jsonc = { "prettierd" },
				toml = { "taplo" },
				yaml = { "prettierd" },
				php = { "php_cs_fixer", "pint" },
				go = { "goimports" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				markdown = { "prettierd" },
				markdown_inline = { "prettierd" },
			},
		})
	end,
}
