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
  {
    "mrcjkb/haskell-tools.nvim",
    version = "^4",
    ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
    dependencies = {
      { "nvim-telescope/telescope.nvim", optional = true },
    },
    config = function()
      local ok, telescope = pcall(require, "telescope")
      if ok then
        telescope.load_extension("ht")
      end
    end,
    keys = function()
      local ht = require("haskell-tools")
      return {
        { "<leader>ht", ht.hoogle.hoogle_signature, desc = "search hoogle signature" },
        { "<leader>he", ht.lsp.buf_eval_all, desc = "evaluate all" },
        { "<leader>hr", ht.repl.toggle, desc = "toggle repl" },
      }
    end,
  },
}
