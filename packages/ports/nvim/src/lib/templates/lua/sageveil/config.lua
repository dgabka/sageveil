---@alias Palette { bg: string, bg_bright: string, fg_dim: string, fg_bright: string, fg: string, red: string, yellow_dim: string, yellow_bright: string, green: string, cyan: string, magenta: string }
---@alias PaletteColor "bg" | "bg_bright" | "fg_dim" | "fg_bright" | "fg" | "red" | "yellow_dim" | "yellow_bright" | "green" | "cyan" | "magenta" | "surface" | "overlay"
---@alias Highlight { link: string, inherit: boolean } | { fg: string, bg: string, sp: string, bold: boolean, italic: boolean, undercurl: boolean, underline: boolean, underdouble: boolean, underdotted: boolean, underdashed: boolean, strikethrough: boolean, inherit: boolean }

local config = {}

---@class Options
config.options = {
  ---@type table<string, Highlight>
  overrides = {},
}

---@param options Options | nil
function config.extend_options(options)
  config.options = vim.tbl_deep_extend("force", config.options, options or {})
end

return config
