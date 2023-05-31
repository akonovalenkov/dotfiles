local plugin = {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      update_focused_file = {
        enable = true,
        -- update_root = true,
      },
      view = {
        width = 36,
      },
    })

    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFindFile<cr>", {})
    vim.keymap.set(
      "n",
      "<leader>t",
      function()
        require("nvim-tree.api").tree.toggle({ focus = false, find_find = true })
      end,
      {}
    )

    local config_group = vim.api.nvim_create_augroup("MyConfigGroup", {})

    vim.api.nvim_create_autocmd({ "User" }, {
      pattern = "SessionLoadPost",
      group = config_group,
      callback = function()
        require("nvim-tree.api").tree.toggle({ focus = false, find_file = true })
      end,
    })
  end,
}

return plugin
