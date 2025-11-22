return {
  'akinsho/toggleterm.nvim',
  version = '*',

  keys = {
    { '<leader>tt', '<cmd>ToggleTerm direction=float<cr>', desc = 'Toggle Terminal' },

    -- Lazygit launcher must be defined here
    {
      '<leader>gg',
      function()
        local Terminal = require('toggleterm.terminal').Terminal
        local lazygit = Terminal:new {
          cmd = 'lazygit',
          hidden = true,
          direction = 'float',
          float_opts = { border = 'rounded' },
        }
        lazygit:toggle()
      end,
      desc = 'Lazygit (float)',
    },
  },

  opts = {
    open_mapping = [[<leader>tt]],
    direction = 'float',
    float_opts = { border = 'rounded' },
  },

  config = function(_, opts)
    require('toggleterm').setup(opts)
  end,
}
