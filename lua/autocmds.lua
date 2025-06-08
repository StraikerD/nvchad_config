require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd({"VimEnter"}, {
  group = augroup("WorkingDirectory", { clear = true }),
  pattern = {"*.*"},
  callback = function()
    local path = vim.fn.expand('%:h').."/"
    vim.api.nvim_command("cd "..path)
  end,
})

