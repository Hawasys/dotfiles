-- chadrc

-- Just an example, supposed to be placed in /lua/custom/
local M = {}
-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
M.mappings = require "custom.mappings"
M.plugins = require "custom.plugins"

M.ui = {
  changed_themes = {
    tokyodark = {
      base_16 = {
        base05 = "#f7eedd",
        base0F = "#f7eedd",
        base08 = "#f7eedd",
        base0D = "#f7768e",
      },
      base_30 = {
        line = "#696969",
      },
    },
  },
  theme = "tokyodark",
  hl_override = {
    IndentBlanklineContextChar = {
      fg = "#d7d7d7",
    },
  },
}

return M
