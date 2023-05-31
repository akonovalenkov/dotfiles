vim.keymap.set({ "i", "v" }, ";", "<esc>")
vim.keymap.set({ "n", "v" }, "<leader>qq", ":confirm qall<cr>")
vim.keymap.set({ "n", "v" }, "<leader>w", ":w<cr>")
vim.keymap.set({ "n", "v" }, "<leader>x", ":")
vim.keymap.set("n", "0", "^")
vim.keymap.set(
  "n",
  "k",
  "v:count == 0 ? 'gk' : 'k'",
  { expr = true, silent = true }
)
vim.keymap.set(
  "n",
  "j",
  "v:count == 0 ? 'gj' : 'j'",
  { expr = true, silent = true }
)
vim.keymap.set("n", "<cr>", ":noh<cr><cr>")
vim.keymap.set("n", "gn", ":cn<cr>", {})
vim.keymap.set("n", "gp", ":cp<cr>", {})
