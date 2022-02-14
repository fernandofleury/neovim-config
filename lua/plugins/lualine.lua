local lualine = require('lualine')

lualine.setup {
  options = {
    section_separators = { left = '', right = ''},
    component_separators = { left = '', right = ''}
  },
  extensions = {'nvim-tree'}
}
