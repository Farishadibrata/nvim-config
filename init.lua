-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Remap window navigation to use arrow keys with Ctrl-w

-- Move to the left window
vim.api.nvim_set_keymap("n", "<leader><Left>", "<C-w>h", { noremap = true, silent = true })

-- Move to the down window
vim.api.nvim_set_keymap("n", "<leader><Down>", "<C-w>j", { noremap = true, silent = true })

-- Move to the up window
vim.api.nvim_set_keymap("n", "<leader><Up>", "<C-w>k", { noremap = true, silent = true })

-- Move to the right window
vim.api.nvim_set_keymap("n", "<leader><Right>", "<C-w>l", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Space><C-Left>", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space><C-Right>", ":bnext<CR>", { noremap = true, silent = true })
vim.opt.clipboard = "unnamedplus"

require("dap-go").setup({
  -- Additional dap configurations can be added.
  -- dap_configurations accepts a list of tables where each entry
  -- represents a dap configuration. For more details do:
})
