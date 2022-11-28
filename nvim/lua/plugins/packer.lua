local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	--PACKETES
	-- AYU THEME
	use 'Shatur/neovim-ayu'
	
	 --[[
	-- CATPPUCCIN THEME
	use {
    		"catppuccin/nvim",
    		as = "catppuccin",
    		config = function()
        		require("catppuccin").setup {
       			     	flavour = "macchiato" -- mocha, macchiato, frappe, latte
        		}
	       		 vim.api.nvim_command "colorscheme catppuccin"
    		end
	}
	--]]

	-- NEOTRE
	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
	use {
		'nvim-neo-tree/neo-tree.nvim',
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons",
			"MunifTanjim/nui.nvim"
		},
	}

	-- BARRA INFERIOR FELINE
	use{
		'feline-nvim/feline.nvim',
		require = {
			'gitsigns.nvim',
			'nvim-web-devicons'
		},
	}

	-- PESTA;AS TABBY
	use{
		'nanozuki/tabby.nvim',	
		requires = { 'kyazdani42/nvim-web-devicons'},
	}

	-- AUTOSAVE
	use "Pocco81/auto-save.nvim"

	-- AUTOPARE para autocompletar simbolos comillas llaves etc
	use {
		'windwp/nvim-autopairs',
		config = function()
		require('nvim=autopairs').setup()
		end
	}

end)




