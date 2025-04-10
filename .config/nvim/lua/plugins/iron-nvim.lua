return {
  "Vigemus/iron.nvim",
  config = function()
    local iron = require("iron.core")
    iron.setup({
      config = {
        scratch_repl = true,
        repl_definition = {
          sh = {
            command = { "zsh" },
          },
          python = {
            command = { "python3" },
            format = require("iron.fts.common").bracketed_paste_python,
          },
          typescript = {
            command = { "node" },
          },
        },
        repl_open_cmd = "20 split",
      },
      keymaps = {
        send_line = "<leader>rl",
        send_motion = "<leader>rs",
        send_file = "<leader>ra",
        send_paragraph = "<leader>rp",
        send_until_cursor = "<leader>rh",
        cr = "<leader>r<cr>",
        interrupt = "<leader>rx",
        exit = "<leader>rq",
        clear = "<leader>rc",
        visual_send = "<leader>r",
      },
      highlight = { italic = false },
      ignore_blank_lines = true,
    })
  end,
  keys = {
    { "<leader>r", desc = "Repl", group = "repl", icon = "" },
    { "<leader>rf", "<cmd>IronFocus<cr>", desc = "focus" },
    { "<leader>rR", "<cmd>IronRestart<cr>", desc = "restart" },
    { "<leader>rr", "<cmd>IronRepl<cr>", desc = "init/toggle" },
    { "<leader>rH", "<cmd>IronHide<cr>", desc = "hide" },
  },
}
