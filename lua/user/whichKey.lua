
local cmp_status_ok, whichKey = pcall(require, "which-key")
if not cmp_status_ok then
  return
end


whichKey.setup {}
