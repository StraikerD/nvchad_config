-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.ui = {
  statusline = {
    separator_style = "block",
  },
}

M.base46 = {
  theme = "ayu_dark",
  transparency = true,

  hl_override = {
    ["@comment"] = { fg = "#999999" },
    Comment = { fg = "#999999" },
    LineNr = { fg = "#AAAAAA" },
    NonText = { fg = "#777777" },
    Folded = { fg = "#999999" },
    WinSeparator = { fg = "#777777" },
    CursorLine = { bg = "#282828", },
    CursorLineNr = { fg = "#FFFFFF", bg = "#282828" },
    -- SignColumn = { bg = "#282828" },
    Visual = { bg = "#1D426D" },
    IndentBlanklineContextStart = { bg = "#282828"},
    IndentBlanklineContextChar = { bg = "#282828", fg = "#BBBBBB"},
    IndentBlanklineChar = { fg = "#555555"},
    IndentBlanklineSpaceChar = { fg = "#555555"},
    TbLineBufOff = { fg = "#999999" },
    TbLineBufOffClose = { fg = "#999999" },

    DevIconGDScript = { fg = "#1DA2E0" },
    DevIconGodotTextScene = { fg = "#1DA2E0" }
  },
}

M.nvdash = {
  load_on_startup = true
}

return M
