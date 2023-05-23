-- Concise way to escape termcodes
local function t(str)
	-- Adjust boolean arguments as needed
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

vim.g.mapleader = t'<Space>'
vim.g.maplocalleader = t'<Space>'
vim.cmd [[set clipboard+=unnamedplus]]

require('plugins')
require('ui')
require('treesitter')
require('completion')
require('lsp')
require('md-latex')
