lvim.transparent_window = true
vim.opt.wrap = false
lvim.debug = false
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.cmd([[set iskeyword+=-]])
-- vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
pcall(require, "profile")

-- 行号相关配置
vim.o.relativenumber = true

-- 自定义 tokyonight 部分配置
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_italic_variables = true
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_colors = {
	comment = "#f0a1a8",
	fg_gutter = "#ea8677",
	-- dark5 = "#ffffff",
}
vim.cmd([[colorscheme tokyonight]])
