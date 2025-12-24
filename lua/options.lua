require "nvchad.options"

local set = vim.o
local opt = vim.opt

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

set.cursorlineopt ='both' -- to enable cursorline!

set.tabstop = 2
set.shiftwidth = 2
opt.colorcolumn = "100"
opt.formatoptions:remove("r")
opt.formatoptions:remove("o")

set.scrolloff = 7

set.relativenumber = true
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldtext = require("configs.foldtext")
opt.foldenable = false

set.list = true
opt.listchars = {
  tab            = '⍆ ',-- ► ➡ 󰜴 ➜ ⏵ ⇥ ⭾ ↹ ⍆
  space          =  '⎵', -- '⎯',
  trail          =  '⬥', -- · ⚬ ◦ • ⍛
  extends        =  '󰜴', -- ⏵
  precedes       =  '󰜱', -- ⏴
  eol            =  '⮠', -- ⏎ ⮠ ⮐ ⤶ ↩ ↲ ↵ ⇣ ⇓ ↴ ↓
  leadmultispace = '│ ',
  multispace     =  '⎼', -- · ⍽ ⎯ ⎵
}

opt.fillchars = {
  eob = "~",
  lastline = "@",
  fold = " ",
  foldopen = ">",
  foldsep = "^",
  foldclose = ">",
}

