return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	ft = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
	opts = {
		settings = {
			tsserver_format_options = {
				indentSize = 2,
				convertTabsToSpaces = true,
			},
		},
	},
}
