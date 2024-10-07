return {
  { "tpope/vim-fugitive" },
  { "folke/flash.nvim" },
  {
    "folke/which-key.nvim",
    opts = {
      icons = {
        separator = "▶", -- symbol used between a key and it's label
      },
    },
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function(_, opts)
      require("toggleterm").setup({
        open_mapping = [[<leader>T]],
        start_in_insert = true,
        insert_mappings = false,
      })
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = true,
    },
  },
  --{
  --  "williamboman/mason.nvim",
  --  opts = function(_, opts)
  --    vim.list_extend(opts.ensure_installed, {
  --      "ruff",
  --    })
  --  end,
  --},
}
