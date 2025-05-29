require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup("identation", { clear = true })

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
  group = augroup,

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
