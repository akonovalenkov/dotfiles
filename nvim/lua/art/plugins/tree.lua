local plugin = {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    require("nvim-tree").setup({
      update_focused_file = {
        enable = true,
        -- update_root = true,
      },
      view = {
        width = 36
      }
    })

    vim.keymap.set('n', '<leader>e', ":NvimTreeFindFile<cr>", {})
    vim.keymap.set('n', '<leader>t', function ()
      require('nvim-tree.api').tree.toggle({focus = false, find_find = true})
    end, {})

    vim.api.nvim_create_autocmd({ "VimEnter" }, {
      callback = function(data)
        -- buffer is a real file on the disk
        local real_file = vim.fn.filereadable(data.file) == 1

        -- buffer is a [No Name]
        local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

        if not real_file and not no_name then
          -- return
        end

        -- open the tree, find the file but don't focus it
        -- require("nvim-tree.api").tree.toggle({ focus = false, find_file = true, })

        -- require('nvim-tree.api').tree.open({focus = true })
      end
    })
  end
}

return plugin
