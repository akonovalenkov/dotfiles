local plugin = {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    require("nvim-tree").setup({
      update_focused_file = {
        enable = true,
        -- update_root = true,
      },
      view = {
        width = 36
      }
    })

    vim.keymap.set('n', '<leader>e', ":NvimTreeFindFile<cr>", { })
  end
}

return plugin

