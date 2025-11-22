-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    {
      '\\',
      function()
        require('neo-tree.command').execute {
          toggle = true,
          position = 'float',
          source = 'filesystem',
          reveal = true,
          focus = true,
        }
      end,
      desc = 'NeoTree (float)',
      silent = true,
    },
    {
      '<S-h>',
      function()
        require('neo-tree.command').execute { toggle_hidden = true }
      end,
      desc = 'NeoTree: Toggle Hidden Files',
    },
    {
      '<S-i>',
      function()
        require('neo-tree.command').execute { toggle_gitignored = true }
      end,
      desc = 'NeoTree: Toggle Ignored Files',
    },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['l'] = 'open',
          ['h'] = 'close_node',
        },
      },
    },
  },
}
