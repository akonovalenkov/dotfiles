local plugin = {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup {
      toggler = {
        line = '<leader>cc',
        block = '<leader>cb'
      },
      opleader = {
        line = '<leader>cc',
        block = '<leader>cb'
      }
    }

  end
}

return plugin

