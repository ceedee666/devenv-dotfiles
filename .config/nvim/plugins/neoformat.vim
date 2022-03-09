let g:neoformat_run_all_formatters = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

let g:neoformat_enabled_markdown = ['prettier']
let g:neoformat_enabled_python = ['black', 'isort']

" run formatter on save
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
