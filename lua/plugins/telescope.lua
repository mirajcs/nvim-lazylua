-- ~/.config/nvim/lua/plugins/telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    telescope.setup()

    -- Keybindings
    local keymap = vim.keymap.set
    keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
    keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
    keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find Buffers" })
    keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Find Help" })
  end,
}
