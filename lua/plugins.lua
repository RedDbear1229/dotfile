return { 

	-- Alpha (Start up dashboard) 
	{ 
		'goolord/alpha-nvim', 
		dependencies = { 'nvim-tree/nvim-web-devicons' }, 
		config = function () 
		require'alpha'.setup(require'alpha.themes.startify'.config) 
		end 
	}, 

	-- Which-key 
	{ 
		"folke/which-key.nvim", 
		lazy = true, 
	}, 

	-- vimwiki 
	{ 
		"vimwiki/vimwiki", 
	}, 

	-- Bufferline 
	{ 
		'akinsho/bufferline.nvim', 
		dependencies = 'nvim-tree/nvim-web-devicons' 
	}, 

	-- Lualine 
	{ 
		'nvim-lualine/lualine.nvim', 
		dependencies = { 'nvim-tree/nvim-web-devicons' } 
	}, 

	-- Hop (Better Navigation) 
	{ 
		"phaazon/hop.nvim", 
		lazy = true, 
	}, 

	-- Nvimtree (File Explorer) 
	{ 
		'nvim-tree/nvim-tree.lua', 
		lazy = true, 
		dependencies = { 
			'nvim-tree/nvim-web-devicons', 
		}, 
	}, 

	-- Telescope (Fuzzy Finder) 
	{ 
		'nvim-telescope/telescope.nvim', 
		lazy = true, 
		dependencies = { 
			{'nvim-lua/plenary.nvim'}, 
		} 
	}, 

	-- Treesitter 
	{ 
		"nvim-treesitter/nvim-treesitter", 
	}, 

	-- Colorscheme (Kanagawa) 
	{ 
		"rebelot/kanagawa.nvim", 
		lazy = false, 
		priority = 1000, 
		config = function() 
		vim.cmd([[colorscheme kanagawa]]) 
		end, 
	}, 

	-- Toggle Term 
	{ 
		'akinsho/toggleterm.nvim', 
		versionntag = "*", 
		config = true 
	}, 

	-- Language Support 
	{ 
		'VonHeikemen/lsp-zero.nvim', 
		branch = 'v1.x', 
		dependencies = { 

			-- LSP Support 
			{'neovim/nvim-lspconfig'}, -- Required 
			{'williamboman/mason.nvim'}, -- Optional 
			{'williamboman/mason-lspconfig.nvim'}, -- Optional 

			-- Autocompletion 
			{'hrsh7th/nvim-cmp'}, -- Required 
			{'hrsh7th/cmp-nvim-lsp'}, -- Required 
			{'hrsh7th/cmp-buffer'}, -- Optional 
			{'hrsh7th/cmp-path'}, -- Optional 
			{'saadparwaiz1/cmp_luasnip'}, -- Optional 
			{'hrsh7th/cmp-nvim-lua'}, -- Optional 

			-- Snippets 
			{'L3MON4D3/LuaSnip'}, -- Required 
			{'rafamadriz/friendly-snippets'}, -- Optional 
		} 
	}, 

	-- Auto Pairs 
	{ 
		"windwp/nvim-autopairs" 
	}, 

	-- Nvim-Surround (Manipulating Surroundings) 
	{ 
		"kylechui/nvim-surround", 
		config = function() 
		require("nvim-surround").setup({ 
			-- Configuration here, or leave empty to use defaults 
		}) 
		end 
	}, 

	-- Indentation Highlighting 
	{ 
		"lukas-reineke/indent-blankline.nvim", 
		main = 'ibl', 
	}, 

	-- Rainbow Highlighting 
	{ 
		"HiPhish/nvim-ts-rainbow2", 
	}, 

	-- glow (markdown preview with float windows) 
	{ 
		"ellisonleao/glow.nvim", 
		config = true, 
		cmd = "Glow" 
	}, 

	-- Dressing (Popup UI) 
	{ 
		'stevearc/dressing.nvim', 
		opts = {}, 
	}, 

	{ 
		"folke/noice.nvim", 
		event = "VeryLazy", 
		opts = { 
			-- add any options here 
		}, 
		dependencies = { 
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries 
			"MunifTanjim/nui.nvim", 
			-- OPTIONAL: 
			-- `nvim-notify` is only needed, if you want to use the notification view. 
			-- If not available, we use `mini` as the fallback 
			"rcarriga/nvim-notify", 
		} 
	}, 

	-- Neodev (Neovim lua API) 
	{ 
		"folke/neodev.nvim", 
		opts = {}, 
		lazy = true, 
	}, 

	-- Telescope-tab 
	{ 
		"LukasPietzschmann/telescope-tabs", 
		lazy = true, 
		requires = { 'nvim-telescope/telescope.nvim' }, 
		config = function() 
		require'telescope-tabs'.setup{ 
			-- Your custom config :^) 
		} 
		end 
	}, 

	-- Tagbar 
	{ 
		"preservim/tagbar", 
		opts = { 
			vim.cmd([[ 
				let g:tagbar_type_vimwiki = { 
					\ 'ctagstype' : 'vimwiki', 
					\ 'sort': 0, 
					\ 'kinds' : [ 
						\ 't:목차' 
					\ ] 
				\ } 
			]]) 
		} 
	}, 

	-- Gutentags (generation ctags in background) 
	{ "ludovicchabant/vim-gutentags" }, 

	-- nvim-window (switching between windows) 
	{ "yorickpeterse/nvim-window" }, 

	-- Middleclass (OOP library for lua) 
	{ "anuvyklack/middleclass" }, 

	-- Animation.nvim (OOP library to create animations) 
	{ 
		"anuvyklack/animation.nvim", 
		requires = { 'anuvyklack/middleclass' }, 
	}, 

	-- windows.nvim (Automatically expand width of the current window) 
	{ 
		"anuvyklack/windows.nvim", 
		requires = { 
			"anuvyklack/middleclass", 
			"anuvyklack/animation.nvim" 
		}, 
		config = function() 
		vim.o.winwidth = 10 
		vim.o.winminwidth = 10 
		vim.o.equalalways = false 
		require('windows').setup() 
		end 
	}, 

	-- vim-plugin-AnsiEsc 
	{ "powerman/vim-plugin-AnsiEsc" }, 

	-- Vim-Taskwarrior 
	{ "farseer90718/vim-taskwarrior" }, 

	-- Taskwiki 
	{ "tools-life/taskwiki" }, 

	-- legendary
	{
		'mrjones2014/legendary.nvim',
		-- since legendary.nvim handles all your keymaps/commands,
		-- its recommended to load legendary.nvim before other plugins
		priority = 10000,
		lazy = false,
		-- sqlite is only needed if you want to use frecency sorting
		dependencies = { 'kkharji/sqlite.lua' },
	},

} 
