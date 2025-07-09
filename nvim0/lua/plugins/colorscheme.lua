return {
    'dgox16/oldworld.nvim',
    event = 'VimEnter',
    opts = { variant = 'oled' },
    config = function()
      require('oldworld').setup { variant = 'oled' }
      vim.cmd.colorscheme 'oldworld'
    end,
}
