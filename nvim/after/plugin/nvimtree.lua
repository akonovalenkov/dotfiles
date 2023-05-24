require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
    -- update_root = true,
  },
  view = {
    width = 40
  }
})


vim.keymap.set('n', '<leader>t', ":NvimTreeFindFileToggle<cr>", { })

