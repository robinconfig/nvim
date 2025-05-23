---
--- 提供一个temp buffer, 可以执行lua脚本, 并且实时eval.
--- Command:
--- * Luapad - which open interactive scratch buffer with real time evaluation.
--- * LuaRun - which run content of current buffer as lua script in new scope. You do not need to write file to disc or have to worry about overwriting functions in global scope. 
---

return {
	"rafcamlet/nvim-luapad"
}
