-- vimwiki setting
vim.cmd("let g:vimwiki_global_ext = 0")
vim.cmd("let wiki_1 = {}")
vim.cmd("let wiki_1.path = '~/mywiki/'")
vim.cmd("let wiki_1.syntax = 'markdown'")
vim.cmd("let wiki_1.ext = 'md'")
vim.cmd("let wiki_2 = {}")
vim.cmd("let wiki_2.path = '~/mywiki/vimwiki/'")
vim.cmd("let wiki_2.syntax = 'markdown'")
vim.cmd("let wiki_2.ext = 'md'")
vim.cmd("let g:vimwiki_list = [wiki_1, wiki_2]")
vim.cmd("let g:vimwiki_conceallevel = 0")

require "options"
require "keymap"
require "lazy-config"
require "autopairs-config"
require "bufferline-config"
require "hop-config"
require "indentline-config"
require "nvim-tree-config"
require "lualine-config"
require "telescope-config"
require "treesitter-config"
require "toggleterm-config"
require "lsp-config"
require "noice-config"
require "whichkey-config"

vim.cmd([[
	let g:taskwiki_dont_preserve_folds = "yes"
	let g:taskwiki_dont_fold = "yes"
]])

