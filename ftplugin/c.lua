vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.textwidth = 101
vim.wo.colorcolumn = '+0'


local function files_exist(names)
  local filename = ""
  for _,v in ipairs(names) do
    filename = vim.fn.expand("%:p:h").."/"..v
    if vim.fn.filereadable(filename) == 1 then
      return true
    end
  end
  return false
end

if not files_exist({ "Makefile", "CMakeLists.txt" }) then
  if vim.bo.filetype == "c" then
    vim.bo.makeprg = "gcc % -o %< && ./%<"
  elseif vim.bo.filetype == "cpp" or vim.bo.filetype == "cxx" then
    vim.bo.makeprg = "g++ % -o %< && ./%<"
  end
end

