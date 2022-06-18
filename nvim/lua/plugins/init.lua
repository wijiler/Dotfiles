
local packer = require'packer'
-- local util = require'packer.util'

-- local package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')

packer.init({})

packer.startup(function()
  local use = use
  use {'neoclide/coc.nvim', branch = 'release'}
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
}
use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use 'sharkdp/fd'
use 'BurntSushi/ripgrep'
-- use 'shaunsingh/nord.nvim'
use 'morhetz/gruvbox'
use 'rluba/jai.vim'
  end)
