require('nvim-ts-autotag').setup()

local options = {
  ensure_installed = {
    "c",
    "bash",
    "json",
    "lua",
    "vim",
    "vimdoc",
    "markdown",
    "html",
    "cpp",
    "cmake",
    "gitignore",
    -- "gdscript",
    -- "godot_resource",
    -- "gdshader",
  },

  highlight = {
    enable = true,
    -- use_languagetree = true,
  },

  indent = { enable = true },

  autotag = {
    enable = true,
    enable_close = true,
    enable_rename = true,
  },
}

return options
