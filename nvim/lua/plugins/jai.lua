local lsp = require('lspconfig')
local util = require('lspconfig/util')
local configs = require('lspconfig/configs')

--configs.jai = {
--    default_config = {
--      cmd = { "jails" }, -- you can replace with your jai-lsp of chose, I choose jails because its the best
--      root_dir = util.path.dirname,
--      filetypes = { "jai" },
--      },
--}
--
--vim.tbl_deep_extend('keep', lsp, {
--	lsp_name = {
--		cmd = { 'jails' },
--		filetypes = 'jai',
--		name = 'jai',
--	}
--})
-- for some reason this works

			vim.lsp.start({
				name = "jai",
				cmd = { "jails" },
				root_dir = vim.fn.getcwd(), -- Use PWD as project root dir.
			})


