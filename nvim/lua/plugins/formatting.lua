-- Override default format timeout for conform.nvim
return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        sql = { "sqlfmt" },
      },
      default_format_opts = {
        timeout_ms = 10000, -- 10 seconds
      },
    },
  },
}
