return {
  "L3MON4D3/LuaSnip",
  version = "v2.*", -- stable version
  build = "make install_jsregexp", -- for advanced regex
  dependencies = {
    "rafamadriz/friendly-snippets",
  },
  config = function()
    local ls = require("luasnip")
    require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/lua/snippets" })
    require("luasnip.loaders.from_vscode").lazy_load()

    vim.keymap.set({ "i", "s" }, "<Tab>", function()
      if ls.expand_or_jumpable() then
        return "<Plug>luasnip-expand-or-jump"
      else
        return "<Tab>"
      end
    end, { expr = true, silent = true })

    vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
      if ls.jumpable(-1) then
        return "<Plug>luasnip-jump-prev"
      else
        return "<S-Tab>"
      end
    end, { expr = true, silent = true })
  end,
}

