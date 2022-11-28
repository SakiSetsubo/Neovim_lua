-- Aliases
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-- Desactivar el movimiento cno las flechas del telado en todos los modos
map('','<up>', '<nop>', {noremap = true})
map('','<down>', '<nop>', {noremap = true})
map('','<left>', '<nop>', {noremap = true})
map('','<right>', '<nop>', {noremap = true})

-- Desplazarse con ctrl i j k h en modo insert
map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<right>', default_opts)

-- Terminal
-- open terminal
map('n', '<C-t>', ':Term<CR>', {noremap = true})
map('t', '<C-w>h', '<C-\\><C-n><C-w>h', {noremap = true})
map('t', '<C-w>j', '<C-\\><C-n><C-w>j', {noremap = true})
map('t', '<C-w>k', '<C-\\><C-n><C-w>k', {noremap = true})
map('t', '<C-w>l', '<C-\\><C-n><C-w>l', {noremap = true})
map('t', '<C-w><C-w>', '<C-\\><C-n><C-w><C-w>', {noremap = true})

