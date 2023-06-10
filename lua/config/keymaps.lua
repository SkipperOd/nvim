-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--#regions

vim.keymap.set(
  "n",
  "<leader>tf",
  "<cmd>!tmux neww .Tmux-sessionizer.sh<cr>",
  { noremap = true, desc = "Tmux sessionizer" }
)
