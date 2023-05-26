local plugin = {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    require('lualine').setup {
      options = {
        theme = 'Tomorrow',
        disabled_filetypes = { 'packer', 'NVimTree' },
        ignore_focus = { 'packer', 'NvimTree' },
        globalstatus = true,
      },
      tabline = {
        lualine_a = { 'buffers' }
      },
    }
  end
}

return plugin
