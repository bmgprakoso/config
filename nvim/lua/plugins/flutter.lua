return {
  {
    "nvim-flutter/flutter-tools.nvim",
    ft = { "dart" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    opts = {
      ui = { border = "rounded" },
      decorations = {
        statusline = { app_version = true, device = true, project_config = true },
      },
      widget_guides = { enabled = true },
      closing_tags = { highlight = "Comment", prefix = "// ", enabled = true },
      dev_log = { enabled = true, open_cmd = "tabedit" },
      lsp = {
        color = { enabled = true, background = true, virtual_text = false },
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          renameFilesWithClasses = "prompt",
          updateImportsOnRename = true,
          enableSnippets = true,
        },
      },
    },
    keys = {
      { "<leader>F", "", desc = "+flutter" },
      { "<leader>Fr", "<cmd>FlutterRun<cr>", desc = "Run" },
      { "<leader>Fq", "<cmd>FlutterQuit<cr>", desc = "Quit" },
      { "<leader>FR", "<cmd>FlutterRestart<cr>", desc = "Restart" },
      { "<leader>Fh", "<cmd>FlutterReload<cr>", desc = "Hot Reload" },
      { "<leader>Fd", "<cmd>FlutterDevices<cr>", desc = "Devices" },
      { "<leader>Fe", "<cmd>FlutterEmulators<cr>", desc = "Emulators" },
      { "<leader>Fo", "<cmd>FlutterOutlineToggle<cr>", desc = "Outline" },
      { "<leader>FD", "<cmd>FlutterDevTools<cr>", desc = "DevTools" },
      { "<leader>Fl", "<cmd>FlutterLogClear<cr>", desc = "Clear Log" },
      { "<leader>Fp", "<cmd>FlutterPubGet<cr>", desc = "Pub Get" },
      { "<leader>Fu", "<cmd>FlutterPubUpgrade<cr>", desc = "Pub Upgrade" },
    },
  },
}
