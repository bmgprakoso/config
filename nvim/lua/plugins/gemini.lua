return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.terminal = opts.terminal or {}
  end,
  keys = {
    {
      "<C-\\>",
      function()
        Snacks.terminal.toggle("gemini", {
          win = {
            position = "right",
            width = 0.3,
          },
        })
      end,
      mode = { "n", "t" },
      desc = "Toggle Gemini",
    },
  },
}
