return {

  {
    -- Modify which-key keys
    "folke/which-key.nvim",
    opts = function()
      require("which-key").register({
        ["<leader>r"] = {
          name = "+REPL",
        },
      })
    end,
  },

  {
    "Vigemus/iron.nvim",
    cmd = {
      "IronRepl",
      "IronReplHere",
      "IronRestart",
      "IronSend",
      "IronFocus",
      "IronHide",
      "IronWatch",
      "IronAttach",
    },
    keys = {
      { "<leader>rs", "<cmd>IronRepl<cr>", desc = "Start a REPL" },
      { "<leader>rr", "<cmd>IronRestart<cr>", desc = "Restart REPL" },
      { "<leader>rf", "<cmd>IronFocus<cr>", desc = "Focus REPL" },
      { "<leader>rh", "<cmd>IronHide<cr>", desc = "Hide REPL" },
      { "<leader>rSl", "iron_send_line", desc = "Send line to REPL" },
    },
    main = "iron.core", -- <== This informs lazy.nvim to use the entrypoint of `iron.core` to load the configuration.
    opts = {
      config = {
        -- Whether a repl should be discarded or not
        scratch_repl = true,
        -- Your repl definitions come here
        repl_definition = {},
        -- How the repl window will be displayed
        -- See below for more information
        -- repl_open_cmd = require('iron.view').bottom(40),
      },
      -- Iron doesn't set keymaps by default anymore.
      -- You can set them here or manually add keymaps to the functions in iron.core
      keymaps = {
        send_motion = "<leader>rSc",
        visual_send = "<leader>rSc",
        send_file = "<leader>rSf",
        --send_line = "<leader>rSl",
        send_mark = "<leader>rSm",
        mark_motion = "<leader>rMc",
        mark_visual = "<leader>rMc",
        remove_mark = "<leader>rMd",
        interrupt = "<leader>rSi",
        exit = "<leader>rq",
        clear = "<leader>rc",
      },
      -- If the highlight is on, you can change how it looks
      -- For the available options, check nvim_set_hl
      highlight = { italic = true },
      ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
    },
  },
}
