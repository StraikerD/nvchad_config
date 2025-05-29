require "nvchad.mappings"

local map = vim.keymap.set
local unmap = vim.keymap.del


-- Defaults
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "G", "Gzz", { desc = "Center buffer on screen" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
unmap("n", "<leader>n")


-- Toggle Comments
map({"n", "i"}, "<C-_>", "gcc", { desc = "toggle comment", remap = true })
map("v", "<C-_>", "gcc<ESC>", { desc = "toggle comment", remap = true })


-- NvimTree
map("n", "<leader>e", function() vim.cmd "NvimTreeToggle" end, { desc = "Toggle NvimTree" })

