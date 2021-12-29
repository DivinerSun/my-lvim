local M = {}

M.config = function()
	local status_ok, autotag = pcall(require, "nvim-ts-autotag")
	if not status_ok then
		return
	end

	autotag.setup({
		filetypes = {
			"html",
			"javascript",
			"javascriptreact",
			"typescriptreact",
			"svelte",
			"vue",
			"xml",
			"ejs",
		},
		skip_tags = {
			"area",
			"base",
			"br",
			"command",
			"embed",
			"hr",
			"img",
			"slot",
			"input",
			"keygen",
			"link",
			"meta",
			"param",
			"source",
			"track",
			"wbr",
			"menuitem",
		},
	})
end

return M
