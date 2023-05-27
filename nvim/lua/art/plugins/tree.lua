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

    vim.keymap.set('n', '<leader>e', ":NvimTreeFindFile<cr>", {})

    vim.api.nvim_create_autocmd({ "VimEnter" }, {
      callback = function()
        require('nvim-tree.api').tree.open()
      end
    })
  end
}

return plugin
