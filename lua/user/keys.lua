-- keymappings
lvim.leader = "space"
lvim.format_on_save = true
lvim.lsp.automatic_servers_installation = true

-- Customs
lvim.keys.normal_mode["<C-s>"] = ":lua require('user.utils').SaveAll()<cr>" -- 保存所有
lvim.keys.normal_mode["<C-l>"] = "<S-$>"
lvim.keys.normal_mode["<C-h>"] = "<S-^>"
lvim.keys.insert_mode["<C-h>"] = "<Home>"
lvim.keys.insert_mode["<C-l>"] = "<End>"
lvim.keys.visual_mode["<C-h>"] = "<Home>"
lvim.keys.visual_mode["<C-l>"] = "<End>"

lvim.keys.normal_mode["<C-j>"] = "5j"
lvim.keys.normal_mode["<C-k>"] = "5k"
lvim.keys.visual_mode["<C-j>"] = "5j"
lvim.keys.visual_mode["<C-k>"] = "5k"

lvim.keys.insert_mode["kj"] = "<Esc>o<ESC>ki"

-- 格式化快捷键
lvim.keys.normal_mode["<S-f>"] = "<cmd>Neoformat<CR>"

-- 新一行
lvim.keys.insert_mode["<C-o>"] = "<ESC>o"

lvim.keys.normal_mode["<esc><esc>"] = "<cmd>nohlsearch<cr>"
lvim.keys.normal_mode["<TAB>"] = "<cmd>lua vim.lsp.buf.signature_help()<CR>"
lvim.keys.visual_mode["p"] = [["_dP]]
-- lvim.keys.normal_mode["Q"] = "<cmd>BufferClose!<CR>"
lvim.keys.normal_mode["Q"] = "<cmd>BufferKill<CR>"
lvim.keys.normal_mode["<A-h>"] = "<cmd>BufferLineMovePrev<CR>"
lvim.keys.normal_mode["<A-l>"] = "<cmd>BufferLineMoveNext<CR>"

lvim.keys.normal_mode["<F1>"] = ":e ~/Notes/<cr>"
lvim.keys.normal_mode["<F3>"] = ":e .<cr>"
lvim.keys.normal_mode["<F4>"] = "<cmd>Telescope resume<cr>"
lvim.keys.normal_mode["<F5>"] = "<cmd>Telescope commands<CR>"
lvim.keys.normal_mode["<F6>"] =
	[[:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>]]
lvim.keys.normal_mode["<F7>"] = "<cmd>TSHighlightCapturesUnderCursor<cr>"
lvim.keys.normal_mode["<F8>"] = "<cmd>TSPlaygroundToggle<cr>"
lvim.keys.normal_mode["<F11>"] = "<cmd>lua vim.lsp.buf.references()<CR>"
lvim.keys.normal_mode["<F12>"] = "<cmd>lua vim.lsp.buf.definition()<CR>"
lvim.keys.normal_mode["ma"] = "<cmd>BookmarkAnnotate<cr>"
lvim.keys.normal_mode["mc"] = "<cmd>BookmarkClear<cr>"
lvim.keys.normal_mode["mm"] = "<cmd>BookmarkToggle<cr>"
lvim.keys.normal_mode["mh"] = '<cmd>lua require("harpoon.mark").add_file()<cr>'
lvim.keys.normal_mode["mj"] = "<cmd>BookmarkNext<cr>"
lvim.keys.normal_mode["mk"] = "<cmd>BookmarkPrev<cr>"
lvim.keys.normal_mode["ms"] =
	"<cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>"
lvim.keys.normal_mode["mx"] = "<cmd>BookmarkClearAll<cr>"
lvim.keys.normal_mode["mu"] = '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>'

lvim.keys.normal_mode["<C-N>"] = '<cmd>lua print("hi")<CR>'
vim.cmd([[nnoremap c* /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn]])
vim.cmd([[nnoremap c# ?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN]])
vim.cmd([[vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>]])
local wk = require("which-key")
wk.register({ ["c*"] = "Cut forward", ["c?"] = "Cut backward" })

-- Whichkey
lvim.builtin.which_key.mappings.l.d = { "<cmd>TroubleToggle<cr>", "Diagnostics" }
lvim.builtin.which_key.mappings.l.R = { "<cmd>TroubleToggle lsp_references<cr>", "References" }
lvim.builtin.which_key.mappings.l.o = { "<cmd>SymbolsOutline<cr>", "Outline" }
lvim.builtin.which_key.mappings.T.h = { "<cmd>TSHighlightCapturesUnderCursor<cr>", "Highlight" }
lvim.builtin.which_key.mappings.T.p = { "<cmd>TSPlaygroundToggle<cr>", "Playground" }
lvim.builtin.which_key.mappings.s.l = { "<cmd>Telescope resume<cr>", "Last Search" }
lvim.builtin.which_key.mappings.g.l = { "<cmd>GitBlameToggle<cr>", "Blame" }

lvim.builtin.which_key.mappings.g["G"] = {
	name = "Gist",
	a = { "<cmd>Gist -b -a<cr>", "Create Anon" },
	d = { "<cmd>Gist -d<cr>", "Delete" },
	f = { "<cmd>Gist -f<cr>", "Fork" },
	g = { "<cmd>Gist -b<cr>", "Create" },
	l = { "<cmd>Gist -l<cr>", "List" },
	p = { "<cmd>Gist -b -p<cr>", "Create Private" },
}
lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen" }
lvim.builtin.which_key.mappings["r"] = {
	name = "Replace",
	r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
	w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
	f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}
lvim.builtin.which_key.mappings["m"] = {
	name = "Replace",
	a = { "<cmd>BookmarkAnnotate<cr>", "Annotate" },
	-- b = { "<cmd>lua require('telescope').extensions.vim_bookmarks.current_file({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>", "Show Buffer" },
	c = { "<cmd>BookmarkClear<cr>", "Clear" },
	h = { '<cmd>lua require("harpoon.mark").add_file()<cr>', "Harpoon Mark" },
	u = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon Menu" },
	m = { "<cmd>BookmarkToggle<cr>", "Toggle" },
	j = { "<cmd>BookmarkNext<cr>", "Next" },
	k = { "<cmd>BookmarkPrev<cr>", "Prev" },
	-- q = { "<cmd>BookmarkShowAll<cr>", "Show QF" },
	s = {
		"<cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>",
		"Show All",
	},
	x = { "<cmd>BookmarkClearAll<cr>", "Clear All" },
}
-- lvim.builtin.which_key.mappings.f = { "<cmd>lua require('lir.float').toggle()<cr>", "Files" }
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<cr>", "Projects" }
lvim.builtin.which_key.mappings["R"] = { '<cmd>lua require("renamer").rename()<cr>', "Rename" }

-- Telescope
lvim.builtin.telescope.on_config_done = function()
	local actions = require("telescope.actions")
	lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
	lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
	lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
	lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
end

-- NvimTree
lvim.builtin.nvimtree.setup.view.mappings.custom_only = true
lvim.builtin.nvimtree.setup.view.mappings.list = {
	{ key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
	{ key = "<C-e>", action = "edit_in_place" },
	{ key = { "O" }, action = "edit_no_picker" },
	{ key = { "<2-RightMouse>", "<C-]>" }, action = "cd" },
	{ key = "<C-v>", action = "vsplit" },
	{ key = "<C-x>", action = "split" },
	{ key = "<C-t>", action = "tabnew" },
	{ key = "<", action = "prev_sibling" },
	{ key = ">", action = "next_sibling" },
	{ key = "P", action = "parent_node" },
	{ key = "<BS>", action = "close_node" },
	{ key = "<Tab>", action = "preview" },
	{ key = "K", action = "first_sibling" },
	{ key = "J", action = "last_sibling" },
	{ key = "I", action = "toggle_ignored" },
	{ key = "H", action = "toggle_dotfiles" },
	{ key = "R", action = "refresh" },
	{ key = "a", action = "create" },
	{ key = "d", action = "remove" },
	{ key = "D", action = "trash" },
	{ key = "r", action = "rename" },
	{ key = "l", action = "edit" },
	{ key = "<C-r>", action = "full_rename" },
	{ key = "x", action = "cut" },
	{ key = "c", action = "copy" },
	{ key = "p", action = "paste" },
	{ key = "y", action = "copy_name" },
	{ key = "Y", action = "copy_path" },
	{ key = "gy", action = "copy_absolute_path" },
	{ key = "[c", action = "prev_git_item" },
	{ key = "]c", action = "next_git_item" },
	{ key = "-", action = "dir_up" },
	{ key = "s", action = "system_open" },
	{ key = "q", action = "close" },
	{ key = "g?", action = "toggle_help" },
	{ key = "W", action = "collapse_all" },
	{ key = "S", action = "search_node" },
	{ key = "<C-i>", action = "toggle_file_info" },
	{ key = ".", action = "run_file_command" },
}
