return {
  'akinsho/toggleterm.nvim',
  version = '*',
  keys = {
    { '<leader>tt', desc = 'Toggle Terminal' },
  },
  opts = {
    open_mapping = [[<leader>tt]],
    direction = 'float',
    float_opts = {
      border = 'rounded',
    },
  },
}
