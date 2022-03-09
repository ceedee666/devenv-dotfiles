lua << EOF
  require('lint').linters_by_ft = {
    markdown = {'vale','markdownlint'}
  }
EOF

au BufWritePost * lua require('lint').try_lint()
