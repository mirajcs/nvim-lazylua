-- plugins/toggleterm.lua
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15,
      open_mapping = [[<C-\>]],
      direction = "horizontal",
      start_in_insert = true,
      persist_size = true,
    })

    -- Optional: map <leader>r to run current Python file
    vim.api.nvim_set_keymap("n", "<leader>r", ":w<CR>:TermExec cmd='python %'<CR>", { noremap = true, silent = true })
  end,
}

