local plugin = {
  "famiu/bufdelete.nvim",
  config = function()
    vim.keymap.set({ "n", "v" }, "<leader>q", "<cmd>Bdelete<cr>")
  end,
}

return plugin
