-- Standalone plugins with less than 10 lines of config go here
return {
  {
    -- Break bad habits when using vim motions
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {},
  },
}
