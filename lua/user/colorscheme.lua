--[[ local colorscheme = "ayu-mirage" ]]
local colorscheme = "catppuccin"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end


local status_ok, catppuccin = pcall(require, "catppuccin")
if not status_ok then
  return
end

local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
  return
end

colorizer.setup()



local colors = require("catppuccin.palettes").get_palette() -- fetch colors from g:catppuccin_flavour palette
local latte = require("catppuccin.palettes").get_palette "latte"
local frappe = require("catppuccin.palettes").get_palette "frappe"
local macchiato = require("catppuccin.palettes").get_palette "macchiato"
local mocha = require("catppuccin.palettes").get_palette "mocha"


vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha

catppuccin.setup({
  highlight_overrides = {
    all = {
      LineNr = { fg = colors.peach },
      LineNrAbove = { fg = colors.surface1 },
      LineNrBelow = { fg = colors.surface1 },
    },

  },
  color_overrides = {
    latte = {
      rosewater = "#F5E0DC",

      flamingo = "#c490ff",

      pink = "#F5C2E7",

      mauve = "#ffb578",

      red = "#ff785a",

      maroon = "#EBA0AC",

      peach = "#FAB387",

      yellow = "#ffde86",

      green = "#bae67e",

      teal = "#89dceb",

      sky = "#89DCEB",

      sapphire = "#74C7EC",

      blue = "#569cd6",

      lavender = "#009AFF",

      text = "#cbccc6",

      subtext1 = "#BAC2DE",

      subtext0 = "#A6ADC8",

      overlay2 = "#9399B2",

      overlay1 = "#7F849C",

      overlay0 = "#6C7086",

      surface2 = "#585B70",

      surface1 = "#4d4d4d",

      surface0 = "#313244",

      base = "#1e1e1e",

      mantle = "#191919",

      crust = "#11111B",
    }
  },
  integrations = {
    telescope = true,
    ts_rainbow = true,
    nvimtree = true,
    treesitter = true,
    treesitter_context = true,
    gitsigns = true
  }
})

vim.cmd [[colorscheme catppuccin]]


--[[ vim.cmd "hi LineNr guifg=#FFCC66" ]]
--[[ vim.cmd "hi LineNrAbove guifg=#CBCCC6" ]]
--[[ vim.cmd "hi LineNrBelow guifg=#CBCCC6" ]]
--[[ vim.cmd "hi Comment guifg=#8f9dac gui=italic" ]]
--[[ vim.cmd "hi CocUnusedHighlight guibg=#1F2430" ]]
--[[ vim.cmd "hi NonText guifg=#FFFFFF" ]]
--[[ vim.cmd "hi SpecialKey guifg=#8f9dac" ]]
--[[ vim.cmd "hi Folded guifg=#DFBFFF" ]]
--[[ vim.cmd "hi @tag.attribute guifg=#FFCC66" ]]
--[[ vim.cmd "hi @tag guifg=#73D0FF" ]]
--[[ vim.cmd "hi @constructor guifg=#73D0FF" ]]
--[[ vim.cmd "hi @tag.delimiter guifg=#73D0FF" ]]
--[[ vim.cmd "hi @type guifg=#FF785A" ]]
--[[ vim.cmd "hi @type.builtin guifg=#FF785A" ]]
--[[ vim.cmd "hi @parameter guifg=#DFBFFF" ]]
--[[ vim.cmd "hi @label guifg=#73D0FF" ]]
--[[ vim.cmd "hi @property guifg=fg" ]]

--[[ vim.cmd "hi MatchParen guibg=#000000" ]]
--[[ vim.cmd "hi Search guibg=#1f2430 guifg=#d41083" ]]
--[[ vim.cmd "hi SpellBad gui=underline guifg=#FFA759" ]]


-- fg = light grey normal text
-- bg = dark grey
-- blue = 73D0FF
-- purple = DFBFFF
-- orange = F29E74
-- yellow = FFCC66
-- red = FF785A
