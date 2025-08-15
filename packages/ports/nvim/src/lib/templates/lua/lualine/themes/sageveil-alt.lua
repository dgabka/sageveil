local p = require("sageveil.palette")

return {
  normal = {
    a = { bg = p.bg_bright, fg = p.cyan, gui = "bold" },
    b = { bg = p.bg_bright, fg = p.magenta },
    c = { bg = p.bg_bright, fg = p.blue, gui = "italic" },
  },
  insert = {
    a = { bg = p.bg_bright, fg = p.yellow, gui = "bold" },
  },
  visual = {
    a = { bg = p.bg_bright, fg = p.magenta, gui = "bold" },
  },
  replace = {
    a = { bg = p.bg_bright, fg = p.green, gui = "bold" },
  },
  command = {
    a = { bg = p.bg_bright, fg = p.red, gui = "bold" },
  },
  inactive = {
    a = { bg = p.bg, fg = p.cyan_dim, gui = "bold" },
    b = { bg = p.bg, fg = p.magenta_dim },
    c = { bg = p.bg, fg = p.blue_dim, gui = "italic" },
  },
}
