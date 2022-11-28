" see https://github.com/puremourning/vimspector#human-mode
let g:vimspector_enable_mappings = 'HUMAN'

" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

nmap <LocalLeader>B     <Plug>VimspectorBreakpoints


let g:vimspector_configurations = {
      \ "debugpy_config": {
      \   "adapter": "debugpy",
      \   "filetypes": [ "python" ],
      \   "configuration": {
      \     "request": "launch",
      \     "type": "python3",
      \     "cwd": "${fileDirname}",
      \     "args": [],
      \     "program": "${file}",
      \     "stopOnEntry": v:false,
      \     "console": "integratedTerminal",
      \     "integer": 123,
      \   },
      \   "breakpoints": {
      \     "exception": {
      \       "raised": "N",
      \       "uncaught": "Y",
      \     }
      \   }
      \ } }
