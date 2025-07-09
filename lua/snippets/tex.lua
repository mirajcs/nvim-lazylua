local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

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
s("letter", fmt([[
    \documentclass[12pt]{{letter}}
    \usepackage[margin=1in]{{geometry}}
    \usepackage{{hyperref}}

    \signature{{{signature}}}
    \address{{{address}}}
    \date{{{date}}}

    \begin{{document}}

    \begin{{letter}}{{{recipient}}}

    \opening{{{opening}}}

    \textbf{{Subject: {subject}}}\\[1em]

    {body}

    \closing{{{closing}}}

    \ps{{{ps}}}
    \encl{{{encl}}}

    \end{{letter}}

    \end{{document}}
  ]], {
    signature = i(1, "Your Name"),
    address   = i(2, "123 Main St\\\\Your City, ST 12345\\\\your@email.com"),
    date      = i(3, "\\today"),
    recipient = i(4, "Recipient Name\\\\Company\\\\Address Line"),
    opening   = i(5, "Dear Recipient,"),
    subject   = i(6, "Job Application"),
    body      = i(7, "I am writing to..."),
    closing   = i(8, "Sincerely,"),
    ps        = i(9, "P.S. Thank you!"),
    encl      = i(10, "Resume"),
  })),
  s("frac", fmt([[\dfrac{{{num}}}{{{dnum}}}]],{
      num = i(1, "num"),
      dnum = i(2, "dnum"),
  }))
}
