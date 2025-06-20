return {

	-- colorscheme switcher
	{
		"zaldih/themery.nvim",
    	lazy = false,
		priority = 1000,
  		opts = {
			themes = {"evergarden", "tokyonight", "retrobox" }, -- Your list of installed colorschemes.
			livePreview = true,
		},
	},
	-- colorscheme evergarden
	{
		'everviolet/nvim', name = 'evergarden',
		priority = 1000,
		lazy = false,
		opts = {
			theme = { variant = 'fall', accent = 'blue' },
			editor = {
				transparent_background = false,
				sign = { color = 'none' },
				float = { color = 'mantle', invert_border = false },
	  	    	completion = { color = 'surface0' },
			},
		},
	},
	
	-- colorscheme tokyonight
	{
		"folke/tokyonight.nvim",
  		lazy = false,
  		priority = 1000,
  		opts = {},
	},


	-- snacks
	--{
	--	"folke/snacks.nvim",
	--	priority = 1000,
	--	lazy = false,
	--	opts = {
	--		bigfile = { enabled = true },
	--		dashboard = { 
	--			enabled = true, example = "advanced",
	--			section = {section = "header",{cmd="colorscript -e kaisen"}}
	--		},
	--		explorer = { enabled = true },
	--		indent = { enabled = true },
	--		input = { enabled = true },
	--		picker = {
	--			enabled = true,
	--			sources = {
	--				files = { hidden = true, ignored = true }
	--			}
	--		},
	--		notifier = { enabled = true },
	--		quickfile = { enabled = true },
	--		scope = { enabled = true },
	--		scroll = { enabled = true },
	--		statuscolumn = { enabled = true },
	--		words = { enabled = true },
	--	},
	--	keys = {
	--		{ "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" }
	--	}
	--},
	
	-- mini.nvim
	{ 
		'echasnovski/mini.nvim',
		priority = 1000,
		version = false,
		enabled = true,
		config = function()
			require('mini.fuzzy').setup()
		end
	},


}

