--set tab to two spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

--lazy.nvim
require("config.lazy")

--catppuccin colortheme
vim.cmd.colorscheme "catppuccin-mocha"


--telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

--neotree keymaps
vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal left toggle<CR>', { desc = 'Neotree file explorer' })


local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "c", "cpp", "python", "rust"},
  highlight = { enable = true },
  indent = {enable = true},
})
