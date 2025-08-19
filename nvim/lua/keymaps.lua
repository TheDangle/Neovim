-- Clear search highlights with <leader>n
vim.keymap.set("n", "<leader>n", ":nohlsearch<CR>")

-- Remap H and L to beginning and end of line
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

-- Remap escape to clear the terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Use <C-d> and <C-u> for half-page scrolling, but keep cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Use <C-s> to save the file
vim.keymap.set("n", "<leader>ss", ":w<CR>")

-- Use <leader>q to quit
vim.keymap.set("n", "<leader>q", ":wq<CR>")

-- Toggle NvimTree file explorer
vim.keymap.set("n", "<leader>e", ":Oil<CR>", { desc = "Toggle file explorer" })

-- delete empty buffer
vim.keymap.set("n", "<leader>db", ":bdelete!<CR>")

-- oil keymaps
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open parent dir in Oil" })

-- run python scripts inside Nvim
vim.keymap.set("n", "<leader>py", ":w<CR>:!python3 %<cR>", { silent = true })

-- neoterm keymaps
vim.keymap.set("n", "<leader>tt", ":NeotermToggle<CR>")
vim.keymap.set("n", "<leader>tc", ":NeotermClose<CR>")
vim.keymap.set("n", "<leader>tx", ":NeotermExit<CR>")
