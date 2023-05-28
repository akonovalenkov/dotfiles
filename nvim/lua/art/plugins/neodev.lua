local plugin = {
  "folke/neodev.nvim",
  opts = {},
  config = function ()
    require("neodev").setup({
      -- add any options here, or leave empty to use the default settings
    })
  end }


  return plugin

