local builtin = require('telescope.builtin')
local extensions = require('telescope').extensions
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>pt', vim.cmd.Telescope, {})
vim.keymap.set('n', '<C-p>', extensions.lazygit.lazygit, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ") });
end)
