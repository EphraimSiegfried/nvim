-- [
-- snip_env + autosnippets
-- ]
local ls = require("luasnip")
local s = ls.snippet
-- local sn = ls.snippet_node
-- local isn = ls.indent_snippet_node
-- local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
-- local c = ls.choice_node
-- local d = ls.dynamic_node
-- local r = ls.restore_node
-- local events = require("luasnip.util.events")
-- local ai = require("luasnip.nodes.absolute_indexer")
-- local extras = require("luasnip.extras")
-- local l = extras.lambda
-- local rep = extras.rep
-- local p = extras.partial
-- local m = extras.match
-- local n = extras.nonempty
-- local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
-- local conds = require("luasnip.extras.expand_conditions")
-- local postfix = require("luasnip.extras.postfix").postfix
-- local types = require("luasnip.util.types")
-- local parse = require("luasnip.util.parser").parse_snippet
-- local ms = ls.multi_snippet
-- local autosnippet = ls.extend_decorator.apply(s, { snippetType = "autosnippet" })

-- local function get_current_file_name()
-- 	return vim.fn.expand("%:t:r")
-- end
return {
	s(
		{ trig = "fun" },
		fmta(
			[[
      function <> = <>(<>)
        <>
      end
      ]],
			{
				i(1, "y"),
				i(2, "foo"),
				i(3, "x"),
				i(4, "y = x;"),
			}
		)
	),
	s(
		{ trig = "fori", snippetType = "autosnippet" },
		fmta(
			[[
      for i = i:<>
        <>
      end
      ]],
			{
				i(1, "10"),
				i(2, "disp(i)"),
			}
		)
	),
	s(
		{ trig = "for" },
		fmta(
			[[
      for <> = <>:<>:<>
        <>
      end
      ]],
			{
				i(1, "counter"),
				i(2, "start"),
				i(3, "incr"),
				i(4, "end"),
				i(5),
			}
		)
	),
	s(
		{ trig = "foreach" },
		fmta(
			[[
      for <> = <>
        <>
      end
      ]],
			{
				i(1, "elem"),
				i(2, "vector"),
				i(3),
			}
		)
	),
	s(
		{ trig = "if" },
		fmta(
			[[
      if <>
        <>
      end
      ]],
			{
				i(1),
				i(2),
			}
		)
	),
	s(
		{ trig = "ifelse" },
		fmta(
			[[
      if <>
        <>
      else 
        <>
      end
      ]],
			{
				i(1),
				i(2),
				i(3),
			}
		)
	),

	s(
		{ trig = "while" },
		fmta(
			[[
      while <>
        <>
      end
      ]],
			{
				i(1),
				i(2),
			}
		)
	),

	s(
		{ trig = "switch" },
		fmta(
			[[
      switch <>
        case <>
          <>
        otherwise
          <>
      end
      ]],
			{
				i(1, "switch_expression"),
				i(2, "case_expression"),
				i(3, "commands"),
				i(4, "commands"),
			}
		)
	),

	s(
		{ trig = "plot" },
		fmta(
			[[
      figure
      plot(<>,<>)
      title('Graph <>')
      xlabel('x')
      ylabel('y')
        
      ]],
			{
				i(1, "x_axis"),
				i(2, "func_vals"),
				i(3, "1"),
			}
		)
	),
	s(
		{ trig = "lambda" },
		fmta(
			[[
      <> = @(<>) <>;
      ]],
			{
				i(1, "func_name"),
				i(2, "input"),
				i(3, "expression"),
			}
		)
	),
	s(
		{ trig = "text" },
		fmta(
			[[
      %% <>
      % <>
      ]],
			{
				i(1),
				i(2),
			}
		)
	),
	s(
		{ trig = "code" },
		fmta(
			[[
      %% <>
      <>
      %%
      ]],
			{
				i(1),
				i(2),
			}
		)
	),
	s(
		{ trig = "latex" },
		fmt(
			[[
      % <latex>
      % {}
      % </latex>
      ]],
			{
				i(1),
			}
		)
	),
}
