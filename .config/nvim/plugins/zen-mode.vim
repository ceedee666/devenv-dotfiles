lua << EOF
  require("zen-mode").setup {
    window = { width = .40 }
  }
EOF

nnoremap <leader>z <cmd>ZenMode<cr>
