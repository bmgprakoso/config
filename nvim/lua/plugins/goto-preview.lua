return {
  {
    -- Preview definitions using floating windows
    "rmagatti/goto-preview",
    dependencies = { "rmagatti/logger.nvim" },
    event = "BufEnter",
    config = function()
      require("goto-preview").setup({})

      -- Short, mnemonic mappings under <leader>p
      vim.keymap.set(
        "n",
        "<leader>pd",
        "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
        { desc = "Preview Definition" }
      )
      vim.keymap.set(
        "n",
        "<leader>pt",
        "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
        { desc = "Preview Type Definition" }
      )
      vim.keymap.set(
        "n",
        "<leader>pi",
        "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
        { desc = "Preview Implementation" }
      )
      vim.keymap.set(
        "n",
        "<leader>pD",
        "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>",
        { desc = "Preview Declaration" }
      )
      vim.keymap.set(
        "n",
        "<leader>pr",
        "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
        { desc = "Preview References" }
      )
      vim.keymap.set(
        "n",
        "<leader>pc",
        "<cmd>lua require('goto-preview').close_all_win()<CR>",
        { desc = "Close All Previews" }
      )
    end,
  },
}
