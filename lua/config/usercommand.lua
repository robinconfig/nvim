-- 在nvim中打开配置文件目录
vim.api.nvim_create_user_command(
	'OpenConfig',
	function()
		local config_dir = vim.fn.stdpath('config')
		-- vim.cmd('edit ' .. config_dir)
		vim.api.nvim_cmd({cmd = 'edit', args = {config_dir}}, {})
	end,
	{}
)

-- 使用系统文件管理器打开nvim工作目录
-- vim.api.nvim_create_user_command(
-- 	'OpenInFileManager',
-- 	function()
-- 		local current_file_path = vim.fn.expand('%:p:h')
-- 		print(current_file_path)
-- 		local os = vim.loop.os_uname().sysname
-- 		if os == "Windows_NT" then
-- 			-- os.execute('start ' .. current_file_path)
-- 		elseif os == "Darwin" then
-- 			print(os)
-- 		elseif os == "Linux" then
-- 			print(os)
-- 		else
-- 			print('unsupported operation system!')
-- 		end
-- 	end,
-- 	{}
-- )
