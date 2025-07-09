-- ~/.config/nvim/lua/plugins.lua
return {
  {
    "sainnhe/edge",  -- ADD THIS PLUGIN
    lazy = false,
  },
  {
    "lervag/vimtex",
    lazy = false,
    config = function()
      vim.opt.termguicolors = true
      vim.g.edge_style = "aura"
      vim.cmd.colorscheme("edge")

      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_complete_enabled = 1
      vim.g.vimtex_syntax_conceal_disable = 1
    end,
  },
}

