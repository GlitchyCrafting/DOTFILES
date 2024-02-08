local dap = require('dap')

dap.adapters.lldb = {
	type = 'executable',
	command = '/usr/bin/lldb-vscode',
	name = 'lldb'
}

dap.configurations.c = {
	type = "lldb-dap",
	request = 'launch',
	name = "Launch",
	program = function()
		return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
	end,
	preRunCommands = {"./build.sh"},
	cwd = "${workspaceFolder}",
	stopOnEntry = false
}

require('dapui').setup {
	floating = {
		border = 'double'
	}
}
