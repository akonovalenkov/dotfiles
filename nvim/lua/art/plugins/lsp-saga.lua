local plugin = {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    dependencies = {
      {"nvim-tree/nvim-web-devicons"},
      --Please make sure you install markdown and markdown_inline parser
      {"nvim-treesitter/nvim-treesitter"}
    },
    config = function ()
      require("lspsaga").setup({
        symbol_in_winbar = {
          enable = false
        }
      })

      -- vim.keymap.set({"n","v"}, "<leader>r", "<cmd>Lspsaga code_action<CR>")
    end
  }

  return plugin

