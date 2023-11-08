function ColorMyWorkspace(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)
end

ColorMyWorkspace()
