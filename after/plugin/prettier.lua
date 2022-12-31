vim.keymap.set("n", "<leader>fp", vim.cmd.Prettier, {})
vim.keymap.set("n", "<leader>fpp", "<cmd>!prettier --write .<CR>", {})
