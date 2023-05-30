local plugin = {
  "kevinhwang91/nvim-bqf",
  config = function()
    require("bqf").setup({
      preview = {
        wrap = true,
      },
      func_map = {
        open = "o",
        openc = "<cr>",
      },
    })
  end,
}

return plugin
