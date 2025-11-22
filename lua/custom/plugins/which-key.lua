return {
  'folke/which-key.nvim',
  event = 'VimEnter',

  opts = {
    delay = 0,

    layout = {
      height = { min = 4, max = 25 },
      width = { min = 20, max = 50 },
      spacing = 3,
      align = 'center',
    },

    window = {
      border = 'rounded',
      margin = { 1, 1, 1, 1 },
      padding = { 2, 3, 2, 3 },
      winblend = 0,
    },

    keys = {
      scroll_down = 'd',
      scroll_up = 'u',
    },

    render = {
      spacing = 4,
    },

    icons = {
      mappings = vim.g.have_nerd_font,
      keys = vim.g.have_nerd_font and {} or {},
    },

    spec = {
      { '<leader>b', group = '+buffer' },
      { '<leader>c', group = '+code' },
      { '<leader>d', group = '+debug' },
      -- { '<leader>f', group = '+file/find' },
      { '<leader>g', group = '+git' },
      -- { '<leader>q', group = '+quit/session' },
      { '<leader>w', group = '+windows' },
      { '<leader>x', group = '+diagnostics/quickfix' },
    },
  },
}
