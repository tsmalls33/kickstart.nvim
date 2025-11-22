return {
  'folke/which-key.nvim',
  event = 'VimEnter',

  opts = function(_, opts)
    opts.delay = 0

    opts.layout = vim.tbl_deep_extend('force', opts.layout or {}, {
      height = { min = 4, max = 25 },
      width = { min = 20, max = 50 },
      spacing = 3,
      align = 'center',
    })

    opts.window = vim.tbl_deep_extend('force', opts.window or {}, {
      border = 'rounded',
      margin = { 1, 1, 1, 1 },
      padding = { 2, 3, 2, 3 },
      winblend = 0,
    })

    opts.keys = vim.tbl_deep_extend('force', opts.keys or {}, {
      scroll_down = 'd',
      scroll_up = 'u',
    })

    opts.render = vim.tbl_deep_extend('force', opts.render or {}, {
      spacing = 4,
    })

    opts.icons = vim.tbl_deep_extend('force', opts.icons or {}, {
      mappings = vim.g.have_nerd_font,
    })

    opts.spec = {
      { '<leader>b', group = '+buffer' },
      { '<leader>c', group = '+code' },
      { '<leader>d', group = '+debug' },
      { '<leader>g', group = '+git' },
      { '<leader>w', group = '+windows' },
      { '<leader>x', group = '+diagnostics/quickfix' },
    }

    return opts
  end,
}
