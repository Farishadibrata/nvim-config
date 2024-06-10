-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lu
--
-- In your Neovim configuration file
require("gomove").setup({
  -- Default settings:
  map_defaults = false, -- Disable default mappings to use custom ones
  reindent = true, -- Automatically reindent when moving text
  undojoin = true, -- Join undo history
  move_past_end_col = false, -- Move past end column when moving blocks
})

-- Custom key mappings for moving lines and blocks
vim.keymap.set("n", "<M-Up>", "<Plug>GoNSMUp", { noremap = true, silent = true })
vim.keymap.set("n", "<M-Down>", "<Plug>GoNSMDown", { noremap = true, silent = true })
vim.keymap.set("x", "<M-Up>", "<Plug>GoVSMUp", { noremap = true, silent = true })
vim.keymap.set("x", "<M-Down>", "<Plug>GoVSMDown", { noremap = true, silent = true })
