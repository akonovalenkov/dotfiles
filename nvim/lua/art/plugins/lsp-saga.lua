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
    end
  }

  return plugin

