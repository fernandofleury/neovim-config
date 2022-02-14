local telescope = require('telescope')

telescope.setup {
  defaults = {
    preview = {
      treesitter = false
    }
  }
}

telescope.load_extension('project')

telescope.load_extension('fzf')

