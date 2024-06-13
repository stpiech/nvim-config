require("custom/lazy")

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.autoindent = true

-- Highlight while yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Disable arrows in normal and insert mode
--
-- -- Normal
vim.keymap.set('n', '<left>', '<cmd>echo "Use h"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j"<CR>')
--
-- -- Insert
vim.keymap.set('i', '<left>', '<cmd>echo "Use h"<CR>')
vim.keymap.set('i', '<right>', '<cmd>echo "Use l"<CR>')
vim.keymap.set('i', '<up>', '<cmd>echo "Use k"<CR>')
vim.keymap.set('i', '<down>', '<cmd>echo "Use j"<CR>')

