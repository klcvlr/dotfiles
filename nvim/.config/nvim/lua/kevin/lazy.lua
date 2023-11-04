-- Define the path where lazy.nvim will be located.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if lazy.nvim is already installed. If not, clone it from the repository.
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

-- Prepend the runtime path with the path to lazy.nvim to ensure it loads first.
vim.opt.rtp:prepend(lazypath)

-- Configure plugins to be lazy-loaded with the 'lazy' module.
require('lazy').setup({
  -- Some pope essentials
  'tpope/vim-commentary',
  'tpope/vim-fugitive',
  'tpope/vim-repeat',
  'tpope/vim-sensible',
  'tpope/vim-speeddating',
  'tpope/vim-surround',

  -- Mason package manager and LSP configuration helper
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},

  -- LSP and completion plugins
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},

  -- Treesitter and Treesitter text objects
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  { "nvim-treesitter/nvim-treesitter-textobjects", dependencies = "nvim-treesitter/nvim-treesitter" },

  -- Telescope 
  { 'nvim-telescope/telescope.nvim', tag = '0.1.4', dependencies = { 'nvim-lua/plenary.nvim' } },

  -- Colorschemes
  { "catppuccin/nvim", name = "catppuccin" },
})

