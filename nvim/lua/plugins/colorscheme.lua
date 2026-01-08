return {
  {
    "ishan9299/nvim-solarized-lua",
    lazy = false,
    priority = 1000,
  },
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("gruvbox").setup({
  --       undercurl = true,
  --       underline = true,
  --       bold = true,
  --       italic = {
  --         strings = true,
  --         comments = true,
  --         operators = false,
  --         folds = true,
  --       },
  --       strikethrough = true,
  --       invert_selection = false,
  --       invert_signs = false,
  --       invert_tabline = false,
  --       invert_intend_guides = false,
  --       inverse = true,
  --       contrast = "",
  --       palette_overrides = {},
  --       overrides = {
  --         -- Override cursor colors
  --         Cursor = { fg = "#282828", bg = "#fe8019" }, -- Normal mode: Black background, orange cursor
  --         iCursor = { fg = "#282828", bg = "#83a598" }, -- Insert mode: Black background, blue cursor
  --       },
  --       dim_inactive = false,
  --       transparent_mode = false,
  --     })
  --     vim.o.background = "light" -- or "dark" for dark mode
  --     vim.cmd("colorscheme gruvbox")
  --
  --     -- Set cursor options
  --     vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-iCursor/lCursor,r-cr:hor20,o:hor50"
  --   end,
  -- },
  -- {
  --   "projekt0n/github-nvim-theme",
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     require("github-theme").setup({
  --       options = {
  --         transparent = false,
  --         styles = {
  --           comments = "italic",
  --           keywords = "bold",
  --           types = "italic,bold",
  --         },
  --       },
  --     })
  --     vim.cmd("colorscheme github_light")
  --   end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized",
    },
  },
}
