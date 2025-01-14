return {
  {
    'catppuccin/nvim',
    config = function()
      vim.o.background = 'light'
    end,
  },
  {
    'comfysage/evergarden',
    opts = {
      transparent_background = true,
      variant = 'hard', -- 'hard'|'medium'|'soft'
      overrides = {}, -- add custom overrides
    },
  },
  {
    'zaldih/themery.nvim',
    opts = {
      themes = {
        'catppuccin-latte',
        'evergarden',
      },
    },
  },
  {
    dir = '~/projects/eryk-vieira/nvim/auto-dark-mode.nvim-master',
    opts = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.api.nvim_set_option_value('background', 'dark', {})
        vim.cmd 'colorscheme evergarden'
      end,
      set_light_mode = function()
        vim.api.nvim_set_option_value('background', 'light', {})
        vim.cmd 'colorscheme catppuccin-latte'
      end,
    },
  },
}
