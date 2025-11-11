-- Configurations for the existing plugins provided by LazyVim
return {
  {
    -- Prevent diagnostics for any .env* files
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local on_publish_diagnostics = vim.lsp.diagnostic.on_publish_diagnostics
      opts.servers.bashls = vim.tbl_deep_extend("force", opts.servers.bashls or {}, {
        handlers = {
          ["textDocument/publishDiagnostics"] = function(err, res, ...)
            if not res or not res.uri then
              return
            end
            local file_name = vim.fn.fnamemodify(vim.uri_to_fname(res.uri), ":t")

            -- Match any file starting with `.env`, like `.env`, `.env.local`, `.env.production`, etc.
            if not string.match(file_name, "^%.env") then
              return on_publish_diagnostics(err, res, ...)
            end
          end,
        },
      })
    end,
  },
  {
    -- Show ignored files in explorer
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            ignored = true,
          },
        },
      },
    },
  },
  {
    -- Lualine with full breadcrumb path
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.globalstatus = true -- makes statusline span the full width
      opts.options.shortening_target = 0 -- prevent shortening

      opts.sections = opts.sections or {}
      opts.sections.lualine_c = {
        {
          "filename",
          path = 1, -- show relative path
          file_status = true,
          newfile_status = false,
        },
      }
    end,
  },
}
