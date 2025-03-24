vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.loaded_newtr = 1
vim.g.loaded_newtrPlugin = 1

-- nvim-tree
vim.keymap.set("n", "<c-n>", ":NvimTreeFindFileToggle<cr>")

-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>")
