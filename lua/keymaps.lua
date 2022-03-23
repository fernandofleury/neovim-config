local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>y", "+y", opts)

keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>ft", "<cmd>:Neoformat<cr>", opts)

keymap("n", "<leader>ff", "<cmd>Telescope git_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fp", "<cmd>Telescope project<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<Leader>fc", "<cmd>Telescope git_status<cr>", opts)

keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", opts)
keymap("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", opts)

keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'gx', '<cmd>lua vim.api.nvim_command("split") vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'gv', '<cmd>lua vim.api.nvim_command("vsplit") vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
keymap('n', 'gk', '<cmd>lua vim.diagnostic.open_float(0, { scope = "line", border = "single" })<CR>', opts)
keymap('n', 'gp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
keymap('n', 'gn', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

keymap('n', 'hb', '<cmd>Gitsigns blame_line<CR>', opts)
keymap('n', 'hd', '<cmd>Gitsigns diffthis<CR>', opts)
keymap('n', 'hh', '<cmd>Gitsigns preview_hunk<CR>', opts)

keymap("n", "<leader>t", "<cmd>NvimTreeToggle<cr>", opts)

