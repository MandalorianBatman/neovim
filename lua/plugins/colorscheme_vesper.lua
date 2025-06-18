return {
    'datsfilipe/vesper.nvim',
    name = "vesper",

    config = function()
	require("vesper").setup({
	    transparent = false,
	    italics = {
		comments = true, -- italic comments
		keywords = true,
		functions = true,
		strings = true,
		variables = true,
	    },
	    overrides = {},
	    palette_overrides = {},
	})

	vim.cmd.colorscheme("vesper")
    end,
}

