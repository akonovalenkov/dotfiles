vim.keymap.set({"i", "v"}, ";", "<esc>")
vim.keymap.set({"n", "v"}, "<leader>qq", ":confirm qall<cr>")
-- vim.keymap.set({"n", "v"}, "<leader>q", ":bp<cr>:confirm bd #<cr>")
vim.keymap.set({"n", "v"}, "<leader>w", ":w<cr>")
vim.keymap.set({"n", "v"}, "<leader>x", ":")
vim.keymap.set("n", "0", "^")
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set('n', '<cr>', ':noh<cr><cr>')

-- vim.keymap.set('n', '<leader>q', function ()
--   local tree = require('nvim-tree.api').tree
--   local buffer = vim.api.nvim_get_current_buf()
--   -- vim.cmd('confirm bd ' .. buffer)
--   tree.close()
--   vim.api.nvim_buf_delete(buffer, {})
--   tree.toggle({
--     focus = false,
--     find_file = true
--   })
-- end)

vim.keymap.set('n', '<leader>q', function ()
  local tree = require('nvim-tree.api').tree
  local buffer = vim.api.nvim_get_current_buf()
  if vim.bo.buftype == ""  then
    vim.cmd("confirm bd")
    vim.cmd("bp")
  else
    vim.cmd("q")
  end
end)
