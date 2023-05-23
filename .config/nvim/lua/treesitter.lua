local treesitter = require('nvim-treesitter.configs')

-- Use a fork
local treesitter_parser_configs = require('nvim-treesitter.parsers').get_parser_configs()
--treesitter_parser_configs.cpp = {
--  install_info = {
--    url = "~/dev/tree-sitter-cpp",
--    files = { "src/parser.c", "src/scanner.cc" },
--    generate_requires_npm = true,
--  },
--  maintainers = { "@theHamsta" },
--}

treesitter.setup {
    ensure_installed = 'all',
    highlight = { enable = true, additional_vim_regex_highlighting = true },
    --indent = { enable = true },
}

--vim.opt.foldmethod = 'expr'
--vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
--vim.opt.foldlevel = 1

vim.opt.foldmethod = 'syntax'
vim.opt.foldenable = false
