return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.debug = true -- Enable debug mode temporarily
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.diagnostics.sqlfluff.with({
          extra_args = { "--dialect", "postgres" },
          filetypes = { "sql" }, -- Explicitly specify filetypes
        }),
      })
    end,
  },
}
