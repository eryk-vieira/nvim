return {
  'rebelot/kanagawa.nvim',
  'catppuccin/nvim',
  'mhartington/oceanic-next',
  'andersevenrud/nordic.nvim',
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
        'kanagawa-wave',
        'catppuccin-latte',
        'catppuccin-macchiato',
        'catppuccin-mocha',
        'evergarden',
        'OceanicNext',
        'nordic'
      },
    },
  },
}

