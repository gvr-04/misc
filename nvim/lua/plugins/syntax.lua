return {

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

}

