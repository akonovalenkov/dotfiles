local plugin = {
  "aserowy/tmux.nvim",
  config = function()
    require("tmux").setup({
      copy_sync = {
        enable = false,
      }
    }) end
  }

  return plugin

