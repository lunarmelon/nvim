require "core.options" -- Load general options
require "core.keymaps" -- Load general keymaps

-- Set up Lazy plugin manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

local plugins = "plugins"
local opts = {
   defaults = {
      lazy = true,
   },
   install = {
      colorscheme = {"tokyonight"}
   },
   rtp = {
      disabled_plugins = {
         "gzip",
			"matchit",
			"matchparen",
			"netrw",
			"netrwPlugin",
			"tarPlugin",
			"tohtml",
			"tutor",
			"zipPlugin",
      },
   },
}

-- Set up plugins
require("lazy").setup(plugins, opts)
