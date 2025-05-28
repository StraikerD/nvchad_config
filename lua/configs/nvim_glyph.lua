local opts = {
  -- path of the vim digraph table
  digraph_table_path = vim.fn.expand("$VIMRUNTIME/doc/digraph.txt"),

  -- telescope style for popup
  -- telescope_style = dropdown,

  -- these are the categories that nvim-glyph defines to be excludable
  exclude_categories = {
    -- "GREEK",
    -- "LATIN",
    -- "CYRILLIC",
    "HEBREW",
    "ARABIC",
    -- "BOX",
    "JAPANESE",
    -- "OTHER",
  },

  -- exclude these keywords for being display, still present for queries, however
  exclude_keywords = {
    "GREEK ",
    "LATIN ",
    "CYRILLIC ",
    "HEBREW ",
    "ARABIC ",
    "ARABIC%-INDIC ",
    "EXTENDED ",
    "VULGAR ",
    "HIRAGANA ",
    "KATAKANA ",
    "BOPOMOFO ",
    "CAPITAL ",
    "SMALL ",
    "LETTER ",
    "DIGIT ",
  },

  -- exclude certain digraph codes from being included
  exclude_code = {
    -- a digraph dec code (see ":h digraphs" for codes)
  },

  -- custom user-defined glyphs
  custom = {
    -- {
    --   value = "J"                      -- any unicode (or any UTF-8 string for that matter)
    --   display = "TUX"                  -- a description
    --   ordinal = "query string" or nil  -- optional query string, will be the display if nil
    -- }
  },
}

return opts
