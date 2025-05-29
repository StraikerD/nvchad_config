require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local function contains (val, tab)
  for index, value in ipairs(tab) do
    if value == val then
      return true
    end
  end

  return false
end

autocmd({"BufWinEnter"}, {
  desc = "Identation settings",
  group = augroup("Identation", { clear = true }),

  callback = function(event_opts)
    local ftypes = { "c", "h", "cpp", "cxx", "hpp", "hxx" }
    -- override expandtab set by ftplugins
    vim.bo.expandtab = vim.go.expandtab

    if contains(vim.bo.filetype, ftypes) then
      vim.bo.tabstop = 4
      vim.bo.shiftwidth = 4
    end
  end
})

autocmd({"VimEnter"}, {
  group = augroup("WorkingDirectory", { clear = true }),
  pattern = {"*.*"},
  callback = function()
    local path = vim.fn.expand('%:h')..'/'
    path = "cd "..path
    vim.api.nvim_command(path)
  end,
})

