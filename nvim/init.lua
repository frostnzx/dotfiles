-- for neotree to use instead of netrw (need to load this before anything elase)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1 

require("config.lazy")


-- indentation
vim.opt.tabstop = 4       -- \t width
vim.opt.shiftwidth = 4    -- indent (>>, <<, autoindent)
vim.opt.softtabstop = 4   -- Tab in insert mode
vim.opt.expandtab = true  -- Tab → spaces

-- vim built-in diagnostic config
-- vim.diagnostic.disable() -- disable the annoying sign column
vim.diagnostic.config({
  virtual_text = false,         -- optional: less noisy, more IDE-ish
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = { border = "rounded" },
})

vim.opt.number = true


-- quick instant esc (no side effect)
-- vim.opt.timeoutlen = 300
-- vim.opt.ttimeoutlen = 10


vim.cmd 'set termguicolors'

-- for open multiple buffer without saving
vim.opt.hidden = true



-- autosave
local group = vim.api.nvim_create_augroup("AutoSave", { clear = true })
vim.api.nvim_create_autocmd("InsertLeave", {
  group = group,
  callback = function()
    if vim.bo.modified and vim.bo.buftype == "" then
      vim.cmd("silent write")
    end
  end,
})

-- nvim-tree bind
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
