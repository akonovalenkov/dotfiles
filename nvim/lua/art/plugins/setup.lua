local lazy = require("lazy")

local plugins = {
  'pappasam/papercolor-theme-slim',
 'Mofiqul/vscode.nvim',
  require('art.plugins.which-key'),
  require('art.plugins.autopairs'),
  require('art.plugins.telescope'),
  require('art.plugins.treesitter'),
  require('art.plugins.treesitter-textobjects'),
  require('art.plugins.lsp'),
  require('art.plugins.tmux'),
  require('art.plugins.tree'),
  require('art.plugins.lualine'),
  require('art.plugins.fugitive'),
  require('art.plugins.comment'),
  require('art.plugins.gitsigns'),
  require('art.plugins.dashboard'),
  -- require('art.plugins.lsp-signature'),
  require('art.plugins.lsp-saga'),
  require('art.plugins.noice'),
  require('art.plugins.session-manager'),
  require('art.plugins.null-ls'),
  require('art.plugins.surround'),
}


local opts = {}

lazy.setup(plugins, opts)
