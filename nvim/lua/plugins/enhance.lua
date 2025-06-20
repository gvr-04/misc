return {

	-- snacks
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			dashboard = { enabled = true, example = "advanced" },
			explorer = { enabled = true },
			indent = { enabled = true },
			input = { enabled = true },
			picker = {
				enabled = true,
				sources = {
					files = { hidden = true, ignored = true }
				}
			},
			notifier = { enabled = true },
			quickfile = { enabled = true },
			scope = { enabled = true },
			scroll = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = true },
		},
		keys = {
			{ "<C-p>", function() Snacks.picker.smart() end, desc = "Smart Find Files" }
		}
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
	}

}


