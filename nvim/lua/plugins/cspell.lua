return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        -- Your null-ls configuration here
      })
    end,
  },
  {
    "davidmh/cspell.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvimtools/none-ls.nvim",
    },
    config = function()
      local cspell = require("cspell")
      local null_ls = require("null-ls")

      null_ls.register(cspell.diagnostics.with({
        diagnostics_postprocess = function(diagnostic)
          diagnostic.severity = vim.diagnostic.severity.HINT -- or HINT, WARN, ERROR
        end,
      }))
      -- null_ls.register(cspell.diagnostics)
      null_ls.register(cspell.code_actions)
    end,
  },
}
