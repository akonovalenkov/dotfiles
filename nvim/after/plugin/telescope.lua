
require('telescope').setup({
  pickers = {
    find_files = {
      follow = true,
    }
  }
})


local builtin = require('telescope.builtin')



vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.git_files, {})
vim.keymap.set('n', '<leader>a', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
