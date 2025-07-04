-- lua/plugins/iron.lua
return {
  "hkupty/iron.nvim",
  config = function()
    require("iron.core").setup({
      config = {
        repl_definition = {
          python = { command = { "/home/mirajs/.local/bin/ipython" } },
          lua = { command = { "lua" } },
        },
        repl_open_cmd = "vsplit",
      },
      keymaps = {
        send_motion = "<leader>sc",
        visual_send = "<leader>sc",
        send_file = "<leader>sf",
        send_line = "<leader>sl",
        send_mark = "<leader>sm",
        mark_motion = "<leader>mc",
        mark_visual = "<leader>mc",
        remove_mark = "<leader>md",
        cr = "<leader>s<cr>",
        interrupt = "<leader>s<space>",
        exit = "<leader>sq",
        clear = "<leader>cl",
      },
      highlight = { italic = true },
      ignore_blank_lines = true,
    })
  end,
}

