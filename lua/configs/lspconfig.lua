require("nvchad.configs.lspconfig").defaults()

local servers = {
  html = {},

  pylsp = {
    settings = {
      pylsp = {
        plugins = {
          pycodestyle = {
            ignore = {'W391'},
            maxLineLength = 100
          }
        }
      }
    }
  },

  bashls = {
    root_markers = { ".git" },
    filetypes = { "bash", "sh" },
    cmd = { "bash-language-server", "start" },
    settings = {
      bashIde = { globPattern = "*@(.sh|.inc|.bash|.command)"}
    },
  },

  cmake = {
    cmd = { "cmake-language-server" },
    filetypes = { "cmake" },
    init_options = { buildDirectory = "build" },
    root_markers = { "CMakePresets.json", "CTestConfig.cmake", ".git", "build", "cmake" }
  },

  clangd = require("configs.clangd"),

  lua_ls = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = {
      ".luarc.json",
      ".luarc.jsonc",
      ".luacheckrc",
      ".stylua.toml",
      "stylua.toml",
      "selene.yml",
      "selene.toml",
      ".git"
    },
    settings = {
      runtime = { version = 'LuaJIT', path = { 'lua/?.lua', 'lua/?/init.lua', }, },
      workspace = {
        checkThirdParty = false,
        library = { vim.env.VIMRUNTIME }
      }
    },
    -- on_init = function(client)
    --   if client.workspace_folders then
    --     local path = client.workspace_folders[1].name
    --     if
    --       path ~= vim.fn.stdpath('config')
    --       and (vim.uv.fs_stat(path .. '/.luarc.json')) or (vim.uv.fs_stat(path .. '/.luarc.jsonc'))
    --     then
    --       return
    --     end
    -- end
  },
}

for name, opts in pairs(servers) do
  vim.lsp.enable(name)
  vim.lsp.config(name, opts)
end

-- read :h vim.lsp.config for changing options of lsp servers 
