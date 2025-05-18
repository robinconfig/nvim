---
--- 消息buffer插件配置
--- Repo: https://github.com/ariel-frischer/bmessages.nvim
--- 指令:
---:Bmessages
--- Creates a message buffer with the configured options.
--- :Bmessagesvs
--- Creates a message buffer with a vertical split, overriding the split_type to vsplit.
--- :Bmessagessp
--- Creates a message buffer with a horizontal split, overriding the split_type to split.
--- :BmessagesEdit
--- Creates an editable message buffer with the configured options without auto updating. 
---

return {
  "ariel-frischer/bmessages.nvim",
  event = "CmdlineEnter",
  opts = {
		keep_focus = true,
	}
}
