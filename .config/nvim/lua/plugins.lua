local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- My plugins here
	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'
	
	-- Navigation Plugins
	use 'rbgrouleff/bclose.vim'
	use 'scrooloose/nerdtree'
	
	-- UI Plugins
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use 'bling/vim-bufferline'
	use 'altercation/vim-colors-solarized'

	-- Editor Plugins
	use 'Raimondi/delimitMate'
	use 'scrooloose/nerdcommenter'
	use 'tpope/vim-sleuth'
	use 'airblade/vim-gitgutter'
	use 'editorconfig/editorconfig-vim'

	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'

	use 'neovim/nvim-lspconfig'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'nvim-treesitter/playground'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	
	use 'tpope/vim-fugitive'

	use 'lervag/vimtex'
	use 'vim-pandoc/vim-pandoc'
	use 'Vimjas/vim-python-pep8-indent'
	use 'maxmellon/vim-jsx-pretty'
	use 'iden3/vim-circom-syntax'
	use 'tmhedberg/SimpylFold'

	use 'lukaszkorecki/workflowish'

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
