local plugin = {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          ["n"] = {
            ["q"] = actions.close,
            ["o"] = actions.select_default,
          },
        },
        sorting_strategy = "ascending",
        layout_config = {
          prompt_position = "top",
        },
      },
      pickers = {
        find_files = {
          follow = true,
        },
        live_grep = {
          additional_args = { "-L" },
        },
        buffers = {
          sort_lastused = true,
        },
      },
      extensions = {
        file_browser = {
          hijack_netrw = true,
          initial_mode = "normal",
        },
        ["ui-select"] = {
          require("telescope.themes").get_cursor({}),
        },
      },
    })

    vim.keymap.set("n", "<leader>f", builtin.find_files, {})
    vim.keymap.set("n", "<leader>g", builtin.git_files, {})
    vim.keymap.set("n", "<leader>a", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>b", builtin.buffers, {})
    vim.keymap.set("n", "<leader>d", builtin.diagnostics, {})
    vim.keymap.set("n", "<leader>s", builtin.lsp_dynamic_workspace_symbols, {})
    vim.keymap.set("n", "gr", builtin.lsp_references, {})
    vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
    vim.keymap.set("n", "gD", builtin.lsp_type_definitions, {})
    vim.keymap.set("n", "gi", builtin.lsp_implementations, {})
    vim.keymap.set("n", "<leader>z", builtin.resume, {})
    -- vim.keymap.set("n", "/", builtin.current_buffer_fuzzy_find, {})

    --[[ vim.keymap.set('n', '<leader>e', "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>", {
      noremap = true
    }) ]]

    telescope.load_extension("fzf")
    telescope.load_extension("ui-select")
    -- telescope.load_extension('file_browser')
  end,

  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "nvim-telescope/telescope-ui-select.nvim" },
    -- "nvim-telescope/telescope-file-browser.nvim"
  },
}

return plugin
