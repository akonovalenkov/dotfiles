local plugin = {
  "famiu/bufdelete.nvim",
  config = function() vim.keymap.set({ "n", "v" }, "<leader>q", ":Bdelete<cr>") end,
}

return plugin
