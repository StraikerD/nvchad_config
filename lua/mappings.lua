require "nvchad.mappings"

local map = vim.keymap.set
local unmap = vim.keymap.del

-- Defaults
unmap("n", "<leader>n")

map("n", "G", "Gzz",           { desc = "Center buffer on screen" })
map("n", "ZZ", ":wa | qa<CR>", { desc = "Save all files and exit"})
map("n", "ZQ", ":qa<CR>",      { desc = "Close all without saving"})


-- Toggle Comments
map({"n", "i"}, "<C-_>", "gcc", { desc = "toggle comment", remap = true })
map("v", "<C-_>", "gcc<ESC>", { desc = "toggle comment", remap = true })


-- NvimTree
map("n", "<leader>e", function() vim.cmd "NvimTreeToggle" end, { desc = "Toggle NvimTree" })


-- GenNvim
map({'n', 'v'}, '<leader>]', ':Gen<CR>')
map('v', '<leader>[', ':Gen Enhance_Grammar_Spelling<CR>')

-- LuaSnip
local ls = require("luasnip")
map({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
map({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
map({"i", "s"}, "<C-H>", function() ls.jump(-1) end, {silent = true})

