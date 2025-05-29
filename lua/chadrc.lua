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
    Comment      = { fg = "#999999" },
    LineNr       = { fg = "#AAAAAA" },
    NonText      = { fg = "#4F4F4F" },
    Folded       = { fg = "#999999" },
    WinSeparator = { fg = "#777777" },
    CursorLineNr = { fg = "#FFFFFF", bg = "#282828" },
    CursorLine   = { bg = "#282828" },
    Visual       = { bg = "#1D426D" },

    IndentBlanklineContextStart = { bg = "#282828" },
    IndentBlanklineContextChar  = { fg = "#BBBBBB", bg = "#282828" },
    IndentBlanklineChar         = { fg = "#606060" },
    IndentBlanklineSpaceChar    = { fg = "#606060" },
    IblScopeChar                = { fg = "#606060" },
    IblChar                     = { fg = "#0982b0" },

    TbLineBufOff                = { fg = "#999999" },
    TbLineBufOffClose           = { fg = "#999999" },

    DevIconGDScript             = { fg = "#1DA2E0" },
    DevIconGodotTextScene       = { fg = "#1DA2E0" }
  },
}

M.nvdash = {
  load_on_startup = true
}

return M
