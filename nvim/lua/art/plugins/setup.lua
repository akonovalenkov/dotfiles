local lazy = require("lazy")

local plugins = {
  'pappasam/papercolor-theme-slim',
  require('art.plugins.which-key'),
  require('art.plugins.autopairs'),
  require('art.plugins.telescope'),
  require('art.plugins.treesitter'),
  require('art.plugins.lsp'),
  require('art.plugins.tmux'),
  require('art.plugins.tree'),
  require('art.plugins.lualine'),
  require('art.plugins.fugitive'),
  require('art.plugins.comment'),
  require('art.plugins.gitsigns'),
  require('art.plugins.dashboard'),
  require('art.plugins.lsp-signature'),
  require('art.plugins.lsp-saga'),
}


local opts = {}

lazy.setup(plugins, opts)
