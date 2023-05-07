require("catppuccin").setup({
  flavor = "latte",
  highlight_overrides = {
    all = function(colors)
      return {
        LineNr = { fg = '#FAB387' },
        LineNrAbove = { fg = colors.surface1 },
        LineNrBelow = { fg = colors.surface1 },
      }
    end
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
      base = "#020617",
      mantle = "#0f172a",
      crust = "#11111B",
    }
  },
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
    treesitter = true,
    ts_rainbow = true,
    treesitter_context = true,
  }
}
)

vim.cmd.colorscheme("catppuccin-latte")
