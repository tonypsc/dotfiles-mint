-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<CR>",
  "O<Esc>",
  { noremap = true, silent = true, desc = "Insert new line above and return to normal mode" }
)
vim.keymap.set(
  "n",
  "<S-CR>",
  "o<Esc>",
  { noremap = true, silent = true, desc = "Insert new line below and return to normal mode" }
)
