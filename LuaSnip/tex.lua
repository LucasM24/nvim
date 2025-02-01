-- Abbreviations used in this article and the LuaSnip docs
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, true, true), "n", true)
  end
end, { silent = true })

return {
  -- Itemize
  s({trig="item", dscr="Expands 'item' into an equation environment"},
    fmta(
       [[
         \begin{itemize}
             <>
         \end{itemize}
       ]],
       { i(1) }
    )
  ),
  -- Super Index
  s({trig="sup", dscr="Set a super index enviroment"},
    fmta("$<>^{<>}$", {
      i(1),
      i(2)
    }
    )
  ),
  -- Low Index
  s({trig="low", dscr="Set a low index enviroment"},
    fmta("$<>_{<>}$", {
      i(1),
      i(2)
    }
    )
  ),
  -- Low Index
  s({trig="ele", dscr="Set a set of elements"},
    fmta("$<>=\\{<>\\}$", {
      i(1),
      i(2)
    }
    )
  ),
  -- Negrita
  s({trig="neg", dscr="Set bold style"},
    fmta("\\texbf{<>}", {
      i(1),
    }
    )
  )
}

