return {
  'Bekaboo/deadcolumn.nvim',
  config = function()
    require('deadcolumn').setup {
      scope = 'line',
      modes = { 'i', 'ic', 'ix', 'R', 'Rc', 'Rx', 'Rv', 'Rvc', 'Rvx' },
      blending = {
        threshold = 0.75,
        colorcode = '#000000',
        hlgroup = {
          'Normal',
          'background',
        },
      },
      warning = {
        alpha = 0.4,
        colorcode = '#FF0000',
        hlgroup = {
          'Error',
          'background',
        },
      },
    }
  end,
}
