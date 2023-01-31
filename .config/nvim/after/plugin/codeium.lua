-- vim.g.codeium_enabled = false
vim.keymap.set('i', '<c-c>', function() return vim.fn['codeium#Accept']() end,
  { expr = true, desc = 'Accept Completion (Codeium)' })
vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](1) end,
  { expr = true, desc = 'Next Completion (Codeium)' })
vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
  { expr = true, desc = 'Previous Completion (Codeium)' })
vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end,
  { expr = true , desc = 'Clear Completion (Codeium)' })

