local plugin = {
  "Shatur/neovim-session-manager",
  config = function ()
    local Path = require('plenary.path')
    local config = require('session_manager.config')
    require('session_manager').setup({
      autoload_mode = config.AutoloadMode.CurrentDir,
      -- autosave_last_session = true,
      -- autosave_ignore_not_normal = true,
      -- autosave_ignore_dirs = {'node_modules'},
      -- autosave_ignore_filetypes = {
      --   'gitcommit',
      --   'gitrebase',
      -- },
      -- autosave_ignore_buftypes = {},
      -- autosave_only_in_session = false,
      -- max_path_length = 80,
    })
  end
}

return plugin

