local Util = require 'custom.utils'

vim.opt.relativenumber = true
vim.opt.wrap = false
vim.wo.wrap = false
vim.opt.colorcolumn = '80'
vim.opt.clipboard = 'unnamedplus' -- Sync with system clipboard
vim.opt.inccommand = 'nosplit'
vim.opt.ignorecase = true
vim.opt.scrolloff = 6
vim.opt.sidescrolloff = 6
vim.opt.signcolumn = 'yes'
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.smartindent = true

vim.cmd 'colorscheme kanagawa'

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

vim.keymap.set('n', '<leader>b', function()
  vim.cmd 'NvimTreeToggle'
end, { desc = 'Toggle File Tree' })

-- HOP
vim.keymap.set('', '<C-f>', require('hop').hint_words, { remap = true })

-- HARPOON
vim.keymap.set('n', '<leader>hh', require('harpoon.ui').toggle_quick_menu, { desc = '[H]arpoon Toggle Menu' })

vim.keymap.set('n', '<leader>ha', require('harpoon.mark').add_file, { desc = '[H]arpoon [A]dd' })
vim.keymap.set('n', '<leader>h1', function()
  require('harpoon.ui').nav_file(1)
end, { desc = '[H]arpoon [1]' })
vim.keymap.set('n', '<leader>h2', function()
  require('harpoon.ui').nav_file(2)
end, { desc = '[H]arpoon [2]' })

-- Format
vim.keymap.set('n', '<leader>cf', function()
  vim.cmd 'Neoformat'
end, { desc = 'Code [F]ormat' })

-- LazyGit
vim.keymap.set('n', '<leader>gg', function()
  Util.float_term({ 'lazygit' }, { cwd = Util.get_root() })
end, { desc = 'Lazygit (root dir)' })

-- float_term
vim.keymap.set('n', '<leader>ft', function()
  Util.float_term(nil, { cwd = Util.get_root() })
end, { desc = 'Terminal (root dir)' })
vim.keymap.set('n', '<leader>fT', function()
  Util.float_term()
end, { desc = 'Terminal (cwd)' })
