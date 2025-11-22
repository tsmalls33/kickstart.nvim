return {
  'MaximilianLloyd/ascii.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
  },

  opts = {
    header = {},
  },

  config = function(_, opts)
    local ascii = require 'ascii'
    local dashboard = require 'alpha.themes.dashboard'

    opts.header.val = ascii.get_random('text', 'neovim')

    dashboard.section.header.val = opts.header.val
  end,
}
