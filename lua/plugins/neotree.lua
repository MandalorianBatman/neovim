return {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
	'nvim-lua/plenary.nvim',
	'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
	'MunifTanjim/nui.nvim',
    },
    lazy = false,
    keys = {
	{ '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    },
    opts = {
	filesystem = {
	    window = {
		mappings = {
		    ['\\'] = 'close_window',
		},
	    },
	    filtered_items = {
		visible = true,
		hide_by_name = {
		    ".git",
		    "*lock*"
		},
		never_show = {
		    ".git",
		    "*lock*"
		}
	    }
	},
    },
}
