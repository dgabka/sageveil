local M = {}
local config = require("sageveil.config")
local c = require("sageveil.palette")

local function set_highlights()
  local highlights = {
    -- UI
    Normal = { fg = c.fg, bg = c.bg },
    NormalNC = { fg = c.fg_dim, bg = c.bg },
    Conceal = { fg = c.fg_dim, bg = c.bg },
    NormalFloat = { fg = c.fg, bg = c.surface },
    FloatBorder = { fg = c.blue_dim, bg = c.surface },
    Cursor = { fg = c.bg, bg = c.magenta_dim },
    CursorLine = { bg = c.surface },
    CursorColumn = { bg = c.bg_bright },
    CursorLineNr = { fg = c.blue, bold = true },
    LineNr = { fg = c.blue_dim },
    SignColumn = { bg = c.bg, fg = c.blue_dim },
    VertSplit = { fg = c.blue_dim },
    WinSeparator = { fg = c.blue_dim },
    Pmenu = { fg = c.fg, bg = c.surface },
    PmenuSel = { fg = c.surface, bg = c.magenta_dim, bold = true },
    PmenuSbar = { bg = c.bg_bright },
    PmenuThumb = { bg = c.blue_dim },
    StatusLine = { fg = c.fg, bg = c.bg_dim },
    StatusLineNC = { fg = c.fg_dim, bg = c.bg_dim },
    TabLine = { fg = c.fg_dim, bg = c.bg_dim },
    TabLineSel = { fg = c.magenta_dim, bg = c.bg, bold = true },
    TabLineFill = { bg = c.bg_dim },
    Visual = { bg = c.surface },
    Search = { fg = c.bg, bg = c.yellow_dim },
    CurSearch = { fg = c.bg, bg = c.yellow },
    IncSearch = { fg = c.bg, bg = c.cyan },
    MatchParen = { fg = c.red_bright, bold = true },
    Folded = { fg = c.fg_dim, bg = c.bg_dim, italic = true },
    FoldColumn = { fg = c.blue_dim, bg = c.bg },
    ColorColumn = { bg = c.bg_bright },
    NonText = { fg = c.blue_dim },
    Whitespace = { fg = c.blue_dim },
    Directory = { fg = c.magenta_dim },
    ModeMsg = { fg = c.blue_dim },
    MoreMsg = { fg = c.fg },
    Question = { fg = c.fg },
    QuickFixLine = { fg = c.yellow },
    Title = { fg = c.fg },

    Changed = { fg = c.fg },
    Added = { fg = c.green },
    Removed = { fg = c.red },

    -- Syntax
    Comment = { fg = c.fg_dim, italic = true },
    Identifier = { fg = c.fg },
    Function = { fg = c.green, bold = true },
    Statement = { fg = c.green },
    Conditional = { fg = c.green, bold = true },
    Repeat = { fg = c.green },
    Label = { fg = c.yellow },
    Operator = { fg = c.fg },
    Keyword = { fg = c.magenta },
    Exception = { fg = c.red },
    Boolean = { fg = c.cyan },
    Number = { fg = c.cyan },
    Float = { fg = c.cyan },
    String = { fg = c.yellow },
    Character = { fg = c.yellow },
    Type = { fg = c.magenta_dim },
    StorageClass = { fg = c.magenta_dim },
    Structure = { fg = c.cyan },
    Typedef = { fg = c.cyan },
    Special = { fg = c.green_bright },
    Delimiter = { fg = c.fg },
    SpecialComment = { fg = c.green_dim, italic = true },
    Todo = { fg = c.bg, bg = c.yellow, bold = true },
    PreProc = { fg = c.magenta_dim },

    -- Diagnostics
    DiagnosticError = { fg = c.red_bright },
    DiagnosticWarn = { fg = c.yellow_bright },
    DiagnosticInfo = { fg = c.cyan_bright },
    DiagnosticHint = { fg = c.magenta_dim },
    DiagnosticUnderlineError = { undercurl = true, sp = c.red_bright },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.yellow_bright },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.cyan_bright },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.magenta_dim },
    Error = { fg = c.bg, bg = c.red, bold = true },
    ErrorMsg = { fg = c.red_bright },
    WarningMsg = { fg = c.yellow_bright },

    -- Git
    DiffAdd = { fg = c.green, bg = c.bg },
    DiffChange = { fg = c.yellow, bg = c.bg },
    DiffDelete = { fg = c.red, bg = c.bg },
    DiffText = { fg = c.yellow, bg = c.bg, bold = true },
    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.yellow },
    GitSignsDelete = { fg = c.red },

    -- Tree-sitter
    ["@comment"] = { link = "Comment" },
    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { fg = c.blue_dim },
    ["@punctuation.special"] = { fg = c.green_bright },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.function"] = { fg = c.magenta },
    ["@function"] = { link = "Function" },
    ["@function.call"] = { link = "Function" },
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = c.cyan, italic = true },
    ["@string"] = { link = "String" },
    ["@number"] = { link = "Number" },
    ["@boolean"] = { link = "Boolean" },
    ["@variable"] = { fg = c.fg },
    ["@variable.builtin"] = { fg = c.magenta, italic = true },
    ["@constant"] = { fg = c.cyan },
    ["@constant.builtin"] = { fg = c.cyan, italic = true },
    ["@tag"] = { fg = c.green_bright },
    ["@attribute"] = { fg = c.yellow },

    -- LSP semantic
    ["@lsp.type.parameter"] = { fg = c.fg },
    ["@lsp.type.property"] = { fg = c.fg },
    ["@lsp.type.namespace"] = { fg = c.cyan },
    ["@lsp.mod.readonly"] = { italic = true },
    ["@lsp.typemod.variable.readonly"] = { italic = true },
  }

  -- Terminal ANSI colors
  vim.g.terminal_color_0 = c.bg
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.magenta
  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_7 = c.fg
  vim.g.terminal_color_8 = c.bg_bright
  vim.g.terminal_color_9 = c.red_bright
  vim.g.terminal_color_10 = c.green_bright
  vim.g.terminal_color_11 = c.yellow_bright
  vim.g.terminal_color_12 = c.blue_bright
  vim.g.terminal_color_13 = c.magenta_bright
  vim.g.terminal_color_14 = c.cyan_bright
  vim.g.terminal_color_15 = c.fg_bright

  if type(config.overrides) == "table" then
    for group, opts in pairs(config.overrides) do
      highlights[group] = vim.tbl_extend("force", highlights[group] or {}, opts)
    end
  end

  -- Apply highlights
  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

function M.colorscheme()
  vim.opt.termguicolors = true
  if vim.g.colors_name then
    vim.cmd("hi clear")
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = "sageveil"

  set_highlights()
end

---@param options Options
function M.setup(options)
  config.extend_options(options or {})
end

return M
