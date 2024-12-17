return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local bufferline = require 'bufferline'
    bufferline.setup()
    -- vim.keymap.set('n', '<C-n>', ':Neotree<CR>', { desc = 'Open [N]eotree' })
  end,
}
