local tree = require('nvim-tree')

tree.setup {
  update_cwd = true,
  update_focused_file = {
    enable = true
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
}
