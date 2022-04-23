local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
  ensure_installed = "all",
  sync_install = false,
  ignore_install = {
    "phpdoc"
  },
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
}
