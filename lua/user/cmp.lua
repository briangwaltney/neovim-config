local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

local snip_status_ok, ls = pcall(require, "luasnip")
if not snip_status_ok then
  return
end


local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
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
    t({" ", "return <div className=''>"}), i(3), t("</div>"),
    t({'}', " ", "export default "}),
    f(argPick, {1})
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
-- find more here: https://www.nerdfonts.com/cheat-sheet

cmp.setup {
  snippet = {
    expand = function(args)
      ls.lsp_expand(args.body) -- For `luasnip` users.
    end,
  },

  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ["<CR>"] = cmp.mapping.confirm { select = true },
    --[[ ["<Tab>"] = cmp.mapping(function(fallback) ]]
    --[[   if cmp.visible() then ]]
    --[[     cmp.select_next_item() ]]
    --[[   elseif ls.expandable() then ]]
    --[[     ls.expand() ]]
    --[[   elseif ls.expand_or_jumpable() then ]]
    --[[     ls.expand_or_jump() ]]
    --[[   elseif check_backspace() then ]]
    --[[     fallback() ]]
    --[[   else ]]
    --[[     fallback() ]]
    --[[   end ]]
    --[[ end, { ]]
    --[[   "i", ]]
    --[[   "s", ]]
    --[[ }), ]]
    --[[ ["<S-Tab>"] = cmp.mapping(function(fallback) ]]
    --[[   if cmp.visible() then ]]
    --[[     cmp.select_prev_item() ]]
    --[[   elseif ls.jumpable(-1) then ]]
    --[[     ls.jump(-1) ]]
    --[[   else ]]
    --[[     fallback() ]]
    --[[   end ]]
    --[[ end, { ]]
    --[[   "i", ]]
    --[[   "s", ]]
    --[[ }), ]]
  },
  formatting = {
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
    --[[ vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind ]]
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        nvim_lua = "[NVIM_LUA]",
        luasnip = "[Snippet]",
        buffer = "[Buffer]",
        path = "[Path]",
      })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  },
  --[[ confirm_opts = { ]]
  --[[   behavior = cmp.ConfirmBehavior.Replace, ]]
  --[[   select = false, ]]
  --[[ }, ]]
  window = {
    documentation = cmp.config.window.bordered()
  },
  experimental = {
    ghost_text = true,
    native_menu = false,
  },
}
