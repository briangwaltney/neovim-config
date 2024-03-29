local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
    numbers = "ordinal",                    -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
    indicator = {
      icon = "▎",
      style = "icon"
    },
    buffer_close_icon = "",
    modified_icon = "●",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 30,
    max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
    tab_size = 21,
    diagnostics = "nvim_lsp",    -- | "nvim_lsp" | "coc",
    diagnostics_update_in_insert = true,
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    offsets = { { filetype = "NvimTree", text = "", padding = 0 } },
    show_buffer_icons = false,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    separator_style = "thick",   -- | "thick" | "thin" | { 'any', 'any' },
    enforce_regular_tabs = true,
    always_show_bufferline = true,
  },
}

