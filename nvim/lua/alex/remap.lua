vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- LaTeX specific remaps
-- Compile LaTeX document
vim.api.nvim_set_keymap('n', '<leader>lc', ':VimtexCompile<CR>', {noremap = true, silent = true})

-- Stop compilation
vim.api.nvim_set_keymap('n', '<leader>ls', ':VimtexStop<CR>', {noremap = true, silent = true})

-- View PDF
vim.api.nvim_set_keymap('n', '<leader>lv', ':VimtexView<CR>', {noremap = true, silent = true})

-- Toggle table of contents
vim.api.nvim_set_keymap('n', '<leader>lt', ':VimtexTocToggle<CR>', {noremap = true, silent = true})

-- Clean auxiliary files
vim.api.nvim_set_keymap('n', '<leader>lC', ':VimtexClean<CR>', {noremap = true, silent = true})


--exit terminal buffer remp
vim.api.nvim_set_keymap('t', '<Esc><Esc>', '<C-\\><C-n>', {noremap = true, silent = true})
