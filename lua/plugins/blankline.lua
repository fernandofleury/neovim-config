local blankline = require('indent_blankline')

blankline.setup {
  buftype_exclude = {"terminal"},
  filetype_exclude = {"dashboard", "NvimTree", "plug", "lsp-installer"},
  show_current_context = true,
  context_patterns = {
    "class", "return", "function", "method", "^if", "^while", "jsx_element", "^for", "^object",
    "^table", "block", "arguments", "if_statement", "else_clause", "jsx_element",
    "jsx_self_closing_element", "try_statement", "catch_clause", "import_statement",
    "operation_type"
  }
}
