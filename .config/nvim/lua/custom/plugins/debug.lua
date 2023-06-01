-- debug.lua
--
-- Shows how to use the DAP plugin to debug your code.
--
-- Primarily focused on configuring the debugger for Go, but can
-- be extended to other languages as well. That's why it's called
-- kickstart.nvim and not kitchen-sink.nvim ;)

return {
  -- note: yes, you can install new plugins here!
  'mfussenegger/nvim-dap',

  -- note: and you can specify dependencies as well
  dependencies = {
    -- creates a beautiful debugger ui
    'rcarriga/nvim-dap-ui',

    -- installs the debug adapters for you
    'williamboman/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',

    -- Add your own debuggers here
    'leoluz/nvim-dap-go',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    require('mason-nvim-dap').setup {
      -- makes a best effort to setup the various debuggers with
      -- reasonable debug configurations
      automatic_setup = true,

      -- You can provide additional configuration to the handlers,
      -- see mason-nvim-dap README for more information
      handlers = {},

      -- You'll need to check that you have the required things installed
      -- online, please don't ask me how to install them :)
      ensure_installed = {
        -- update this to ensure that you have the debuggers for the langs you want
        'delve',
      },
    }

    -- basic debugging keymaps, feel free to change to your liking!
    vim.keymap.set('n', '<F5>', dap.continue)
    vim.keymap.set('n', '<F10>', dap.step_into)
    vim.keymap.set('n', '<F11>', dap.step_over)
    vim.keymap.set('n', '<F12>', dap.step_out)
    vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)
    vim.keymap.set('n', '<leader>B', function()
      dap.set_breakpoint(vim.fn.input 'breakpoint condition: ')
    end)
    vim.keymap.set("n", "<Leader>lp",
  function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
    vim.keymap.set("n", "<Leader>dr", function() require('dap').repl.open() end)
    vim.keymap.set("n", "<Leader>dl", function() require('dap').run_last() end)

    -- dap ui setup
    -- for more information, see |:help nvim-dap-ui|
    dapui.setup {
      -- set icons to characters that are more likely to work in every terminal.
      --    feel free to remove or use ones that you like more! :)
      --    don't feel like these are good choices.
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = "⏏",
        },
      },
    }
    -- toggle to see last session result. Without this ,you can't see session output in case of unhandled exception.
    vim.keymap.set("n", "<F7>", dapui.toggle)
    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close

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
    end,
}
