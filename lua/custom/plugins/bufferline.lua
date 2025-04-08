return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  init = function()
    -- vim.keymap.set('n', '<leader>b', null { desc = '[B]uffer' })
    vim.keymap.set('n', '<leader>c', '<cmd>bp | sp | bn | bd<CR>', { desc = '[C]lose Buffer' })
    vim.keymap.set('n', ']b', '<cmd>BufferLineCycleNext<CR>', { desc = '[b]uffer Next]' })
    vim.keymap.set('n', '[b', '<cmd>BufferLineCyclePrev<CR>', { desc = '[b]uffer Prev[' })
    vim.keymap.set('n', '<leader>bh', '<cmd>BufferLineCloseLeft<CR>', { desc = '[b]uffer close [h]<-' })
    vim.keymap.set('n', '<leader>bl', '<cmd>BufferLineCloseRight<CR>', { desc = '[b]uffer close [l]->' })
  end,
  config = function()
    local bufferline = require 'bufferline'
    bufferline.setup {
      options = {
        separator_style = 'slant',
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level)
          local icon = level:match 'error' and ' ' or ''
          return ' ' .. icon .. count
        end,
        indicator = {
          style = 'underline',
        },
      },
    }
  end,
}
