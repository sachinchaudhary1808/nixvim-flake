local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local c = ls.choice_node

ls.add_snippets("c", {
    s("boilerplate", {
        t({ "#include <stdio.h>", "\t" }),
        t({ "int main() {", "\t" }),
        i(1, "printf();"),
        t({ "\t", "}" }),
        i(0),
    }),
})
