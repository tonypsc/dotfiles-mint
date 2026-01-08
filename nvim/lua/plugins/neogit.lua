return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim",
      -- "nvim-telescope/telescope.nvim", -- optional
    },
    config = function()
      -- Create an autocmd to run git fetch when Neogit is opened
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "NeogitStatus",
        callback = function()
          vim.fn.jobstart("git fetch", {
            on_exit = function(_, exit_code)
              if exit_code == 0 then
                vim.schedule(function()
                  if package.loaded["neogit"] then
                    require("neogit").refresh()
                  end
                end)
              end
            end,
          })
        end,
      })
    end,
    cmd = "Neogit",
    keys = { { "<leader>gg", "<cmd>Neogit<CR>", mode = { "n" }, desc = "Open Neogit" } },
  },
}
