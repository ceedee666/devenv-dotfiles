-- disable codeium default binding's
-- needs to be set before the plugin in loaded
vim.g.codeium_disable_bindings = 1

return function(use)
  use({
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  })

  use({
    'mhinz/vim-startify',
    'tpope/vim-surround',
  })

  use({
    'jose-elias-alvarez/null-ls.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  })

  use({ 'rcarriga/nvim-dap-ui',
    requires = { 'mfussenegger/nvim-dap' } })


  use({ 'mortepau/codicons.nvim',
    'theHamsta/nvim-dap-virtual-text',
    'nvim-telescope/telescope-dap.nvim' })

  use({ 'ggandor/leap.nvim' })

  use({ 'hrsh7th/cmp-path',
    'hrsh7th/cmp-buffer' })

  use {
    "folke/which-key.nvim"
  }

  use {
    'Exafunction/codeium.vim'
  }
end
