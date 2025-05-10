return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
		require("nvim-tree").setup({
			renderer = {
				highlight_git = true,
				indent_markers = {
					enable = true, -- enables indent lines
					inline_arrows = true, -- show arrows in the indent guide
					icons = {
						corner = "└",
						edge = "│",
						item = "│",
						none = " ",
					},
				},
				icons = {
					git_placement = "after",
					show = {
						git = true,
					},
					glyphs = {
						git = {
							unstaged = "●",
							staged = "✚",
							unmerged = "",
							renamed = "➜",
							untracked = "?",
							deleted = "✖",
							ignored = "ⁱ",
						},
						folder = {
							arrow_closed = "▶", -- or use ">" or "" for no arrow
							arrow_open = "▼", -- or use "v", "▽", or "" for no arrow
							default = "",
							open = "",
							empty = "󰜌",
							empty_open = "󰜌",
							symlink = "",
							symlink_open = "",
						},
					},
				},
			},
			view = {
				adaptive_size = true,
				side = "right",
			},
			filters = {
				dotfiles = false, -- optionally hide all dotfiles (you can keep this false)
				custom = {
					".DS_Store",
					"thumbs.db",
					"node_modules",
					"__pycache__",
					".virtual_documents",
					"^\\.git$",
					".python-version",
					".venv",
				},
			},
		})
	end,
}
