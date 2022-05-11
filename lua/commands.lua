vim.cmd([[
  command! Alpha lua require'alpha'.start(false)
  command! AlphaRedraw lua require('alpha').redraw()
  augroup alpha_start
  au!
  autocmd VimEnter * nested lua require'alpha'.start(true)
  augroup END
]])
