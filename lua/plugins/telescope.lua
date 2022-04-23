local telescope = require('telescope')

telescope.setup {
  defaults = {
    preview = {
      treesitter = false
    }
  },
  pickers = {
    git_files = {
      theme = "ivy"
    },
    git_status = {
      theme = "ivy"
    },
    live_grep = {
      theme = "ivy"
    },
    lsp_document_symbols = {
      theme = "ivy"
    },
    lsp_references = {
      theme = "ivy"
    }
  }
}

telescope.load_extension('fzf')

