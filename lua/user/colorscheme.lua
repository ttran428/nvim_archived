-- tokyo, tokyonight-night, tokyonight-storm, tokyonight-day, tokyonight-moon
-- catppuccin, catppuccin-mocha, catppuccin-macchiato, catppuccin-frappe, catppuccin-latte
local colorscheme = "catppuccin"


local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
