require("config.vim-options")
require("config.lazy")

function Transparent(color)
	color = color or "terafox"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

Transparent()
