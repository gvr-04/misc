return {

	-- snacks
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			dashboard = { 
				enabled = true, example = "advanced",
				sections = {
					{ section = "header" },
					{
						pane = 2,
  				  	  	section = "terminal",
  				  	  	cmd = "colorscript -e crunchbang-mini",
  				  	  	height = 5,
  				  	  	padding = 1,
  				  	},
  				  	{ section = "keys", gap = 1, padding = 5 },
  				  	{ pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
  				  	{ pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
  				  	{
						pane = 2,
  				  	  	icon = " ",
  				  	  	title = "Git status",
  				  	  	section = "terminal",
  				  	  	enabled = function()
							return Snacks.git.get_root() ~= nil
  				  	  	end,
  				  	  	cmd = "git status --short --branch --renames",
  				  	  	height = 5,
  				  	  	padding = 1,
  				  	  	ttl = 5 * 60,
  				  	  	indent = 3,
  				  	},
  				  	{ section = "startup" },
  				},
			},
			explorer = { enabled = true },
			indent = { enabled = true },
			input = { enabled = true },
			picker = {
				enabled = true,
				sources = {
					files = { hidden = true, ignored = true }
				},
				exclude = { ".local", ".cache", ".git", },

			},
			notifier = { enabled = true },
			quickfile = { enabled = true },
			scope = { enabled = true },
			scroll = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = true },
		},
		keys = {
			{ "<leader>p", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
		    { "<leader>n",  function() Snacks.notifier.show_history() end, desc = "Notification History" },
		    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
		    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
			{ "<leader>t", function() Snacks.terminal() end, desc = "Toggle Terminal" },
		},
	},

	-- blink
	{
		'saghen/blink.cmp',
		dependencies = { 'rafamadriz/friendly-snippets' },
		version = '1.*',
		opts = {
		    keymap = { preset = 'default' },
		    appearance = {
				nerd_font_variant = 'mono'
		    },
		    completion = { documentation = { auto_show = false } },
		    sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer' },
		    },
		    fuzzy = { implementation = "prefer_rust_with_warning" }
		},
		opts_extend = { "sources.default" }
	},

	-- smear cursor
	{
		-- "sphamba/smear-cursor.nvim",
		-- opts = {
		-- 	smear_insert_mode = false,
		-- 	-- cursor_color = "#ad363c",
		-- 	stiffness = 0.9,
		-- 	trailing_stiffness = 0.8,
		-- 	-- trailing_exponent = 9,
		-- 	-- hide_target_hack = true,
		-- 	distance_stop_animation = 0.5
		-- },
	},
	
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

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		branch = 'master',
		lazy = false,
		build = ":TSUpdate"
	},

	-- markdown
	{
		"OXY2DEV/markview.nvim",
		lazy = false,
	},

	-- lualine
	{
		'nvim-lualine/lualine.nvim',
    	dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require('lualine').setup{
				options = { 
					theme = "palenight",
					section_separators = { left = '', right = ''},
					component_separators = { left = '|', right = '|'},
				}
			}
		end
	},

	-- flash
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
 	 	opts = {},
 	 	-- stylua: ignore
 	 	keys = {
 	 	  { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
 	 	  { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
 	 	  { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
 	 	  { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
 	 	  { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
 	},
}


}



