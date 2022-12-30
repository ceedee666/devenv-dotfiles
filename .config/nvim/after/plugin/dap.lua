local dap, dapui = require("dap"), require("dapui")

require("nvim-dap-virtual-text").setup()

dapui.setup()

require('codicons').setup()


local continue = function()
  if vim.fn.filereadable('.launch.json') then
    require('dap.ext.vscode').load_launchjs('.launch.json')
  end
  require('dap').continue()
end

-- dap key maps
vim.keymap.set("n", "<F5>", continue)
vim.keymap.set("n", "<F10>", function() require('dap').step_over() end)
vim.keymap.set("n", "<F11>", function() require('dap').step_into() end)
vim.keymap.set("n", "<F12>", function() require('dap').step_out() end)

vim.keymap.set("n", "<Leader>b", function() require('dap').toggle_breakpoint() end)
vim.keymap.set("n", "<Leader>B", function() require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) end)
vim.keymap.set("n", "<Leader>lp",
  function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)

vim.keymap.set("n", "<Leader>dr", function() require('dap').repl.open() end)
vim.keymap.set("n", "<Leader>dl", function() require('dap').run_last() end)


-- automatically open dap-ui
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end


-- nicer break points
vim.api.nvim_set_hl(0, "blue", { fg = "#3d59a1" })
vim.api.nvim_set_hl(0, "green", { fg = "#9ece6a" })
vim.api.nvim_set_hl(0, "yellow", { fg = "#FFFF00" })
vim.api.nvim_set_hl(0, "orange", { fg = "#f09000" })

vim.fn.sign_define('DapBreakpoint', { text = '●', texthl = 'blue', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text = '●', texthl = 'blue', linehl = 'DapBreakpoint',
  numhl = 'DapBreakpoint' })
vim.fn.sign_define('DapBreakpointRejected', { text = '●', texthl = 'orange', linehl = 'DapBreakpoint',
  numhl = 'DapBreakpoint' })
vim.fn.sign_define('DapStopped', { text = '●', texthl = 'green', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
vim.fn.sign_define('DapLogPoint', { text = '●', texthl = 'yellow', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })

-- debug adapters
dap.adapters.python = {
  type = 'executable';
  command = 'python';
  args = { '-m', 'debugpy.adapter' };
}

dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = "Launch file";
    program = "${file}";
    pythonPath = function()
      return 'python3'
    end;
  },
}
