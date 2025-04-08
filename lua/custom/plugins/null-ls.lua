return {
  'jose-elias-alvarez/null-ls.nvim',
  enabled = false,
  -- depedencies = {
  --   'nvimtools/none-ls-extras.nvim',
  -- },
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.diagnostics.eslint_d,
    }
  end,
}
