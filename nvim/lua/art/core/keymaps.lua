vim.keymap.set({"i", "v"}, ";", "<esc>")
vim.keymap.set({"n", "v"}, "<leader>qq", ":confirm qall<cr>")
vim.keymap.set({"n", "v"}, "<leader>q", ":bp<cr>:confirm bd #<cr>")
vim.keymap.set({"n", "v"}, "<leader>w", ":w<cr>")
vim.keymap.set({"n", "v"}, "<leader>x", ":")
vim.keymap.set("n", "0", "^")

