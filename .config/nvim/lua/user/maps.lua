local opts = { silent = true }
local expr_opts = { silent = true, expr = true }

local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

map("n", "<leader>gg", ":LazyGit<CR>", opts)
map("n", "<leader>mm", ":MarkdownPreviewToggle<CR>", opts)
map("n", "<leader>ti", ":lua require('user/functions').toggle_indentation()<CR>", opts)
