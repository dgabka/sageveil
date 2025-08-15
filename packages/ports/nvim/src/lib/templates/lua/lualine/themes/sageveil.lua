local p = require("sageveil.palette")
local config = require("sageveil.config")

return {
	normal = {
		a = { bg = p.yellow_bright, fg = p.bg, gui = "bold" },
		b = { bg = p.bg_bright, fg = p.yellow_bright },
		c = { bg = p.bg, fg = p.fg },
	},
	insert = {
		a = { bg = p.cyan, fg = p.bg, gui = "bold" },
		b = { bg = p.bg_bright, fg = p.cyan },
		c = { bg = p.bg, fg = p.fg },
	},
	visual = {
		a = { bg = p.magenta, fg = p.bg, gui = "bold" },
		b = { bg = p.bg_bright, fg = p.magenta },
		c = { bg = p.bg, fg = p.fg },
	},
	replace = {
		a = { bg = p.green, fg = p.bg, gui = "bold" },
		b = { bg = p.bg_bright, fg = p.green },
		c = { bg = p.bg, fg = p.fg },
	},
	command = {
		a = { bg = p.red, fg = p.bg, gui = "bold" },
		b = { bg = p.bg_bright, fg = p.red },
		c = { bg = p.bg, fg = p.fg },
	},
	inactive = {
		a = { bg = p.bg, fg = p.fg_dim, gui = "bold" },
		b = { bg = p.bg, fg = p.fg_dim },
		c = { bg = p.bg, fg = p.fg_dim },
	},
}
