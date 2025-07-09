return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    local autopairs = require("nvim-autopairs")
    local Rule = require("nvim-autopairs.rule")

    autopairs.setup({
      check_ts = true, -- enable Treesitter integration
    })

    -- Add custom rules for LaTeX environments
    autopairs.add_rules {
      Rule("\\(", "\\)", { "tex", "plaintex", "markdown" })
        :with_pair(function(opts)
          return opts.col >= 2 and opts.line:sub(opts.col - 1, opts.col - 1) == "\\"
        end),
      Rule("\\[", "\\]", { "tex", "plaintex", "markdown" })
        :with_pair(function(opts)
          return opts.col >= 2 and opts.line:sub(opts.col - 1, opts.col - 1) == "\\"
        end),
    }

    -- Optional: cmp integration
    local cmp_status, cmp = pcall(require, "cmp")
    if cmp_status then
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
  end,
}

