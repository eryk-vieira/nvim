function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'

return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        open_mapping = [[<c-\>]],
        direction = 'horizontal',
        insert_mappings = true,
        terminal_mappings = true,
        close_on_exit = true,
        persist_size = true,
        shell = 'zsh',
      }

      -- local Terminal = require('toggleterm.terminal').Terminal
      -- local lazygit = Terminal:new { cmd = 'lazygit', hidden = true, direction = 'float' }
      --
      -- local DockerTerminal = require('toggleterm.terminal').Terminal
      -- local lazydocker = DockerTerminal:new { cmd = 'lazydocker', hidden = true, direction = 'float' }
      --
      -- local BtopTerminal = require('toggleterm.terminal').Terminal
      -- local btop = BtopTerminal:new { cmd = 'btop', hidden = true, direction = 'float' }

      -- local float_handler = function(term)
      --   vim.cmd 'startinsert!'
      --   if vim.fn.mapcheck('jk', 't') ~= '' then
      --     vim.api.nvim_buf_del_keymap(term.bufnr, 't', 'jk')
      --     vim.api.nvim_buf_del_keymap(term.bufnr, 't', '<esc>')
      --   end
      -- end

      -- function _lazygit_toggle()
      --   lazygit:toggle()
      --
      --   float_handler(lazygit)
      -- end
      --
      -- function _lazydocker_toggle()
      --   lazydocker:toggle()
      --
      --   float_handler(lazydocker)
      -- end
      --
      -- function _btop_toggle()
      --   btop:toggle()
      --
      --   float_handler(btop)
      -- end

      -- vim.api.nvim_set_keymap('n', '<leader>lg', '<cmd>lua _lazygit_toggle()<CR>', { noremap = true, silent = true })
      -- vim.api.nvim_set_keymap('n', '<leader>ld', '<cmd>lua _lazydocker_toggle()<CR>', { noremap = true, silent = true })
      -- vim.api.nvim_set_keymap('n', '<leader>lb', '<cmd>lua _btop_toggle()<CR>', { noremap = true, silent = true })
    end,
  },
}
