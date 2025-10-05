return {
  'dasupradyumna/midnight.nvim',
  event = 'VimEnter',
  config = function()
    require('midnight').setup {}
    vim.cmd.colorscheme 'midnight'
  end,
}
