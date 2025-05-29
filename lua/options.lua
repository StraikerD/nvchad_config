require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

o.tabstop = 2
o.shiftwidth = 2
vim.opt.colorcolumn = "100"

o.relativenumber = true

o.list = true
vim.opt.listchars = {
  tab            = '│󰜴', -- ➡ 󰜴 ➜ ⏵ ⇥ ⭾ ↹ ⍆
  space          =  '⎵', -- '⎯',
  trail          =  '⬥', -- · ⚬ ◦ • ⍛
  extends        =  '󰜴', -- ⏵
  precedes       =  '󰜱', -- ⏴
  eol            =  '⮠', -- ⏎ ⮠ ⮐ ⤶ ↩ ↲ ↵ ⇣ ⇓ ↴ ↓
  leadmultispace = '│ ',
  multispace     =  '⎼', -- · ⍽ ⎯ ⎵
}

vim.opt.fillchars = {
  eob = "~",
  lastline = "@",
  fold = " ",
  foldopen = ">",
  foldsep = "^",
  foldclose = ">",
}

