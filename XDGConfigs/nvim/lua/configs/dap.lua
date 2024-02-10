local dap = require('dap')

local function pick_file()
	return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
end

dap.adapters.lldb = {
	type = 'executable',
	command = '/usr/bin/lldb-vscode',
	name = 'lldb'
}

dap.configurations.c = {
	{
		type = 'lldb',
		request = 'launch',
		name = 'Launch',
		program = function() pick_file() end,
		args = {},
		cwd = "${workspaceFolder}",
		stopOnEntry = true
	},
	{
		type = 'lldb',
		request = 'attach',
		name = 'Attach',
		pid = require('dap.utils').pick_process,
		args = {},
	}
}
