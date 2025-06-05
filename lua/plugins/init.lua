return {
-- Godot ------------------------------------------------------------------------
  -- {
  --   "habamax/vim-godot",
  --   event = 'VimEnter',
  -- },

-- Cmake Tools ------------------------------------------------------------------
  {
    "Civitasv/cmake-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },

-- Harpoon ---------------------------------------------------------------------
  {
    lazy=false,
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    -- "nvim-telescope/telescope.nvim"
    dependencies = { {"nvim-lua/plenary.nvim"} },
    opts = function ()
      require "configs.harpoon"
    end,
  },

-- Glyphs ----------------------------------------------------------------------
  {
    "jonathanforhan/nvim-glyph",
    dependencies = {
      { "nvim-telescope/telescope.nvim" }
    },
    opts = function()
      require "configs.nvim_glyph"
    end,
    keys = {
      {
        '<leader>k',
        function ()
          require("nvim-glyph").pick_glyph()
        end,
        -- mode = { "i" },
        desc = 'Open glyphs picker',
      }
    },
  },

-- Linter ----------------------------------------------------------------------
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function ()
      return require "configs.null-ls"
    end,
  },

-- Markdown --------------------------------------------------------------------
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    -- build = "cd app && yarn install",
    -- init = function()
    --   vim.g.mkdp_filetypes = { "markdown" }
    -- end,
  },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

-- LSP-Server ------------------------------------------------------------------
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
      require "configs.clangd"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

-- Todo-Comments ---------------------------------------------------------------
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function ()
      return require "configs.todo-comments"
    end,
    event = "BufReadPost",
  },

-- Tree-Sitter -----------------------------------------------------------------
  {
  	"nvim-treesitter/nvim-treesitter",
    opts = function()
      require "configs.treesitter"
    end,
  },
  {
    lazy = false,
    "windwp/nvim-ts-autotag",
  },

-- Nvim-Tree -------------------------------------------------------------------
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = {
      view = { width = 35, },
      filters = { dotfiles = false, },
    },
  },

-- Themes ----------------------------------------------------------------------
  {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
  },

-- ScrollOff -------------------------------------------------------------------
  {
    lazy = false,
    "plax-00/endscroll.nvim",
    opts = {
      scroll_at_end = false,
    },
  },

}
