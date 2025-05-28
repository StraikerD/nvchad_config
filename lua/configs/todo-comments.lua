local todo = require("todo-comments")

todo.setup {
  cmd = { "TodoQuickFix", "TodoTelescope", "TodoFzfLua", "TodoLocList", "TodoTrouble" },

  vim.keymap.set("n", "]t",
    function()
      require("todo-comments").jump_next()
    end,
    { desc = "Next todo comment" }
  ),

  vim.keymap.set("n", "[t",
    function()
      require("todo-comments").jump_prev()
    end,
    { desc = "Prev todo comment" }
  ),

  vim.keymap.set("n", "<leader>lt", "<cmd>TodoTelescope<CR>", { desc = "Todo Telescope"} ),
}

return todo
