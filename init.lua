-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.wrap = true
vim.opt.showbreak = "↪ "
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
vim.opt.clipboard:append({"unnamedplus"})
