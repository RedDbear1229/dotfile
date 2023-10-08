return {

	-- vimwiki
	{
		"vimwiki/vimwiki",
	},

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
        versionntag  = "*",
        config = true
    },

	-- Language Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
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

	-- Legendary (Key-map plugin)
	{
		'mrjones2014/legendary.nvim',
		-- since legendary.nvim handles all your keymaps/commands,
		-- its recommended to load legendary.nvim before other plugins
		keys = {
			{ "<C-A-p>", "<cmd>Legendary<cr>", desc = "Legendary" },
			{ "<leader>hc", "<cmd>Legendary<cr>", desc = "Command Palette" },
		},
		opts = {
			which_key = { auto_register = true },
		},
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
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		}
	},
}
