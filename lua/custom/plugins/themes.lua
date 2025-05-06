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
}
