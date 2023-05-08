local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

local snip_status_ok, ls = pcall(require, "luasnip")
if not snip_status_ok then
  return
end


local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local function argPick(
  args
)
  return args[1][1]
end

ls.add_snippets("all", {
  s("ind", {
    t('export * from "./'), i(1), t({ '";', 'export { default } from "./' }),
    f(argPick, { 1 }),
    t('";'),
  }),

  s("sfc", {
    t({ 'import React from "react"', ' ', 'const ' }),
    i(1), t('= ('), i(2), t(') => {'),
    t({ " ", "return <div className=''>" }), i(3), t("</div>"),
    t({ '}', " ", "export default " }),
    f(argPick, { 1 })
  }),
  s('cl', {
    t('console.log("'), i(1), t('",'), i(2), t(')')
  }),

  s('res', {
    t({ 'resolve: async ({ctx, input})=> {', }), i(0), t({ '}' })
  }),

  s('cbs', {
    t({ 'onError: (err)=> { setSnack(err.message, "error")},', 'onSuccess: (data)=>{}' })
  }),

  s('formImports', {
    t({ 'import {useForm} from "react-hook-form"', 'import {zodResolver} from "@hookform/resolvers/zod"',
      'import {z} from "zod"', ' ', ' ', 'const formSchema = z.object({})',
      ' ',
      'type TFormSchema = z.infer<typeof formSchema>'

    })
  }),

  s('formUse', {
    t({ 'const form = useForm<TFormSchema>({', 'mode: "onBlur",', 'resolver: zodResolver(formSchema),', '})', ' ', ' ',
      'const onSubmit = (values: TFormSchema)=> {', 'console.log(values)', '}', ' ',
      'const errors = form.formState.errors;' })
  })
})


local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

cmp.setup {
  snippet = {
    expand = function(args)
      ls.lsp_expand(args.body)
    end,
  },


  formatting = {
    fields = { "abbr", "kind", "menu" },
    format = function(entry, vim_item)
      vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)
      vim_item.menu = ({
        copilot = "[C]",
        nvim_lsp = "[L]",
        luasnip = "[S]",
        buffer = "[B]",
        path = "[P]",
      })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
    { name = "copilot" },
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  },
  window = {
    documentation = cmp.config.window.bordered()
  },
  experimental = {
    ghost_text = false,
    native_menu = false,
  },
}
