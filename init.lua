local current_config = "openeyes" -- openeyes or simple

require("common.basic")
require("common.user-command")
require("common.keymap")

if current_config == "openeyes" then
	require("openeyes.launch")

	--- better ui ---
	spec "openeyes.colorscheme" --- 主题
	spec "openeyes.lualine"    --- 状态栏

	---- keymap enhance ----
	spec "openeyes.whichkey"

	---- file ----
	spec "openeyes.file-manage"

	---- better edit ----
	spec "openeyes.autopairs"

	---- program ----
	spec "openeyes.tree-sitter"
	spec "openeyes.comment"
	spec "openeyes.lsp"
	spec "openeyes.completion"
	spec "openeyes.orgmode"

	--- 增强小工具 ----
	spec "openeyes.terminal"
	spec "openeyes.message-buffer"
	spec "openeyes.luapad"

	require("openeyes.lazy")
elseif current_config == "simple" then
end
