return {
  -- add dracula
  { "Mofiqul/dracula.nvim", "navarasu/onedark.nvim", "gbprod/nord.nvim", "EdenEast/nightfox.nvim" },

  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
