-- init.lua
require("config.options")
require("plugins")

vim.opt.updatetime = 1000  -- triggers CursorHold faster (1 second idle)

vim.api.nvim_create_autocmd({ "CursorHoldI", "TextChangedI" }, {
  pattern = { "*.tex", "*.py", "*.html" },
  callback = function()
    if vim.bo.modified and vim.bo.modifiable then
      vim.cmd("silent! write")
    end
  end,
})


vim.keymap.set("n", "<leader>ll", ":VimtexCompile<CR>", { desc = "Compile LaTeX" })

