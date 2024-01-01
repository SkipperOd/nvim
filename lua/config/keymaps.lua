-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--#regions

-- tmux sessionizer
vim.keymap.set(
  "n",
  "<leader>tf",
  "<cmd>!tmux neww bash ~/.config/nvim/scripts/tmux-sessionizer.sh<cr>",
  { noremap = true, desc = "Tmux sessionizer" }
)

-- Harpoon
vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
vim.keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu)
vim.keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end)
vim.keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end)
vim.keymap.set("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end)
vim.keymap.set("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end)
vim.keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(5) end)
vim.keymap.set("n", "<leader>h6", function() require("harpoon.ui").nav_file(6) end)
vim.keymap.set("n", "<leader>h7", function() require("harpoon.ui").nav_file(7) end)
vim.keymap.set("n", "<leader>h8", function() require("harpoon.ui").nav_file(8) end)
vim.keymap.set("n", "<leader>h9", function() require("harpoon.ui").nav_file(9) end)
