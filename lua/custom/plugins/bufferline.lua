return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  init = function()
    vim.opt.termguicolors = true

    -- vim.keymap.set('n', '<leader>b', null { desc = '[B]uffer' })
    vim.keymap.set('n', '<leader>c', '<cmd>bp | sp | bn | bd<CR>', { desc = '[C]lose Buffer' })
    vim.keymap.set('n', ']b', '<cmd>BufferLineCycleNext<CR>', { desc = '[b]uffer Next]' })
    vim.keymap.set('n', '[b', '<cmd>BufferLineCyclePrev<CR>', { desc = '[b]uffer Prev[' })
  end,
  config = function()
    local bufferline = require 'bufferline'
    bufferline.setup {
      options = {
        separator_style = 'slant',
        indicator = {
          style = 'underline',
        },
      },
    }
  end,
}
