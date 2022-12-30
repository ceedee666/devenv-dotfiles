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
end
