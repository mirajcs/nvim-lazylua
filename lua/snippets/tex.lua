local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("eq", {
    t({ "\\begin{equation}", "  " }),
    i(1, "E = mc^2"),
    t({ "", "\\end{equation}" }),
  }),
  s("doc", {
    t({ "\\documentclass{article}", "", "\\usepackage[utf8]{inputenc}", "", "\\title{" }),
    i(1, "My Title"),
    t({ "}", "\\author{Miraj Samarakkody}" }),
    t({ "\\date{" }),
    i(2, "\\today"),
    t({ "}"}),
    t({ "", "", "\\begin{document}", "", "\\maketitle", "", }),
    i(3, "Start writing here..."),
    t({ "", "", "\\end{document}" }),
  }),
}
