local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
	autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")

if not status_ok then
  return
end

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    config = "require('plugins.lualine')"
  }

  use 'kyazdani42/nvim-web-devicons'

  use {
    'kyazdani42/nvim-tree.lua',
    config = "require('plugins.tree')"
  }

  use 'neovim/nvim-lspconfig'

  use {
    'williamboman/nvim-lsp-installer',
    config = "require('plugins.lsp-installer')"
  }

  use {
    'sbdchd/neoformat',
    config = "vim.g.neoformat_try_node_exe=1"
  }

  use {
    'hrsh7th/cmp-nvim-lsp',
    config = "require('plugins.cmp')"
  }

  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'

  use {
    'folke/trouble.nvim',
    config = "require('plugins.trouble')"
  }

  use 'nvim-lua/plenary.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    config = "require('plugins.telescope')"
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim', run = 'make'
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = "require('plugins.treesitter')"
  }

  use {
    'akinsho/toggleterm.nvim',
    config = "require('plugins.toggleterm')"
  }

  use {
    'alvarosevilla95/luatab.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = "require('plugins.luatab')"
  }

  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-sleuth'

  use 'editorconfig/editorconfig-vim'
  use 'christoomey/vim-tmux-navigator'
  use 'norcalli/nvim-colorizer.lua'

  use 'ggandor/lightspeed.nvim'

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = "require('plugins.blankline')"
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = "require('gitsigns').setup()"
  }

  use {
    'folke/which-key.nvim',
    config = "require('which-key').setup()"
  }

  use {
    'goolord/alpha-nvim',
    config = "require('plugins.dashboard')"
  }

  use {
    'catppuccin/nvim',
    config = "vim.cmd('colorscheme catppuccin')"
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
