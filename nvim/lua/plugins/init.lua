
local packer = require'packer'
-- local util = require'packer.util'

-- local package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')

packer.init({})

packer.startup(function()
  local use = use
  --use {'neoclide/coc.nvim', branch = 'release'} doesnt support win
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
use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    -- Autocompletion
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-nvim-lua' },
    { 'hrsh7th/cmp-emoji' },

    -- Snippets
    { 'L3MON4D3/LuaSnip' },
    { 'rafamadriz/friendly-snippets' },
  }
}
use({
  "glepnir/lspsaga.nvim",
  branch = "main",
  config = function()
    require("lspsaga").setup({})
  end,
  requires = { {"nvim-tree/nvim-web-devicons"} }
})

use {
  'SmiteshP/nvim-navic',
  requires = 'neovim/nvim-lspconfig',
}
--use 'morhetz/gruvbox'
use 'wijiler/wrubox'
use 'rluba/jai.vim'
use 'evanleck/vim-svelte'
use 'pest-parser/pest.vim'
use 'Tetralux/odin.vim'
  end)                                          

