-- nvim-autopairs with cmp integration
return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
    local autopairs = require("nvim-autopairs")
    autopairs.setup({
        check_ts = true, -- enable Treesitter integration
    })

    -- Optional: integration with nvim-cmp
    local cmp_status, cmp = pcall(require, "cmp")
    if cmp_status then
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end
        end,
}

-- Add custom rules
local npairs = require("nvim-autopairs")
local Rule   = require("nvim-autopairs.rule")

npairs.add_rules {
  Rule("\\(", "\\)", { "tex", "plaintex", "markdown" })
    :with_pair(function(opts)
      return opts.line:sub(opts.col - 1, opts.col - 1) == "\\"
    end),

  Rule("\\[", "\\]", { "tex", "plaintex", "markdown" })
    :with_pair(function(opts)
      return opts.line:sub(opts.col - 1, opts.col - 1) == "\\"
    end),
}
