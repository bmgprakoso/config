return {
  "nickjvandyke/opencode.nvim",
  version = "*", -- Latest stable release
  dependencies = { "folke/snacks.nvim" },
  config = function()
    local opencode_cmd = "opencode --port"
    ---@type snacks.terminal.Opts
    local snacks_terminal_opts = {
      win = {
        position = "right",
        enter = true,
      },
    }

    ---@type opencode.Opts
    vim.g.opencode_opts = {
      server = {
        start = function()
          require("snacks.terminal").open(opencode_cmd, snacks_terminal_opts)
        end,
      },
    }

    -- Toggle the OpenCode pane open/closed
    local function toggle_opencode()
      require("snacks.terminal").toggle(opencode_cmd, snacks_terminal_opts)
    end
    vim.keymap.set({ "n", "t" }, "<leader>ao", toggle_opencode, { desc = "Toggle OpenCode" })
    vim.keymap.set({ "n", "t" }, "<C-]>", toggle_opencode, { desc = "Toggle OpenCode" })

    -- Recommended/example keymaps
    vim.keymap.set({ "n", "x" }, "<C-a>", function()
      require("opencode").ask("@this: ")
    end, { desc = "Ask OpenCode…" })
    vim.keymap.set({ "n", "x" }, "<C-x>", function()
      require("opencode").select()
    end, { desc = "Select OpenCode…" })
    vim.keymap.set({ "n", "x" }, "go", function()
      return require("opencode").operator("@this ")
    end, { desc = "Append range to OpenCode", expr = true })
    vim.keymap.set({ "n" }, "goo", function()
      return require("opencode").operator("@this ") .. "_"
    end, { desc = "Append line to OpenCode", expr = true })
    vim.keymap.set({ "n" }, "<S-C-u>", function()
      require("opencode").command("session.half.page.up")
    end, { desc = "Scroll OpenCode up" })
    vim.keymap.set({ "n" }, "<S-C-d>", function()
      require("opencode").command("session.half.page.down")
    end, { desc = "Scroll OpenCode down" })
  end,
}
