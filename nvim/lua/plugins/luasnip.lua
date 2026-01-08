return {
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
    config = function(_, opts)
      local ls = require("luasnip")
      local s = ls.snippet
      local t = ls.text_node
      local i = ls.insert_node
      local f = ls.function_node
      local fmt = require("luasnip.extras.fmt").fmt

      local arrow_function_snippet = s("afe", {
        t("("),
        i(1),
        t(") => {"),
        t({ "", "\t" }),
        i(0),
        t({ "", "}" }),
      })

      local arrow_function_implicit_return = s("afi", {
        t("("),
        i(1),
        t(") => ("),
        i(0),
        t(")"),
      })

      local react_functional_component = s(
        "rafcee",
        fmt(
          [[
const {} = () => {{
  return <div>{}</div>;
}};

export {{ {} }};
      ]],
          {
            f(function(_, snip)
              local filename = vim.fn.fnamemodify(vim.fn.bufname(), ":t:r")
              return filename
            end),
            f(function(_, snip)
              local filename = vim.fn.fnamemodify(vim.fn.bufname(), ":t:r")
              return filename
            end),
            f(function(_, snip)
              local filename = vim.fn.fnamemodify(vim.fn.bufname(), ":t:r")
              return filename
            end),
          }
        )
      )

      ls.add_snippets("javascript", { arrow_function_snippet, arrow_function_implicit_return })
      ls.add_snippets("typescript", { arrow_function_snippet, arrow_function_implicit_return })
      ls.add_snippets(
        "javascriptreact",
        { arrow_function_snippet, arrow_function_implicit_return, react_functional_component }
      )
      ls.add_snippets(
        "typescriptreact",
        { arrow_function_snippet, arrow_function_implicit_return, react_functional_component }
      )
    end,
  },
}
