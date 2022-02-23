-- 快捷键
require("user.keys")
require("user.bufferline")
-- 插件
require("user.plugins")
-- 设置
require("user.settings")
require("user.treesitter")

lvim.lsp.automatic_servers_installation = true

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{
		exe = "prettier",
		filetypes = {
			"typescript",
			"typescriptreact",
			"javascript",
			"javascriptreact",
			"vue",
			"html",
			"css",
			"less",
			"scss",
		},
	},
})
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{
		exe = "eslint",
		filetypes = {
			"typescript",
			"typescriptreact",
			"javascript",
			"javascriptreact",
			"vue",
			"css",
			"less",
			"scss",
		},
	},
})

-- vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]
-- Builtins
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true
lvim.builtin.bufferline.active = true
lvim.builtin.cmp.experimental.ghost_text = false
lvim.builtin.telescope.defaults.path_display = { "smart" }
lvim.builtin.project.patterns = { ".git" }
lvim.builtin.project.detection_methods = { "pattern" }
lvim.builtin.fancy_statusline = { active = true } -- enable/disable fancy statusline
lvim.builtin.lualine.options.theme = "horizon"
if lvim.builtin.fancy_statusline.active then
	require("user.lualine").config()
end

-- lvim.builtin.nvimtree.hide_dotfiles = false

-- Treesitter
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.autotag = {
	enable = true,
	disable = { "xml" },
}

lvim.builtin.treesitter.playground.enable = true
lvim.builtin.treesitter.indent.disable = { "python" }
lvim.builtin.treesitter.rainbow = {
	enable = true,
	colors = {
		"Gold",
		"Orchid",
		"DodgerBlue",
		-- "Cornsilk",
		-- "Salmon",
		-- "LawnGreen",
	},
	disable = { "html" },
}

-- local actions = require "telescope.actions"
-- lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next

vim.cmd([[ au CmdWinEnter * quit ]])
-- TODO: q quits in spectr_panel ft
-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {{ "BufRead", "*", "set formatoptions-=cro"}}

-- way to get os name
-- print(vim.loop.os_uname().sysname)

-- *Must* be *S*olidity not solidity
require("nvim-treesitter.parsers").get_parser_configs().solidity = {
	install_info = {
		url = "https://github.com/JoranHonig/tree-sitter-solidity",
		files = { "src/parser.c" },
		requires_generate_from_grammar = true,
	},
	filetype = "solidity",
}
