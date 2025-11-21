return {
	{
		-- Set Laravel Pint as the default PHP formatter with PHP CS Fixer as a fall back.
		"stevearc/conform.nvim",
		optional = true,
		opts = {
			formatters_by_ft = {
				php = { "pint", "php_cs_fixer" },
			},
		},
	},
	-- {
	-- 	-- Remove phpcs linter.
	-- 	"mfussenegger/nvim-lint",
	-- 	optional = true,
	-- 	opts = {
	-- 		linters_by_ft = {
	-- 			php = {},
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	-- Add a Treesitter parser for Laravel Blade.
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	opts = function(_, opts)
	-- 		vim.list_extend(opts.ensure_installed, {
	-- 			"blade",
	-- 			"php_only",
	-- 		})
	-- 	end,
	-- 	config = function()
	-- 		-- Menambahkan definisi filetype baru (.blade.php -> filetype=blade)
	-- 		vim.filetype.add({
	-- 			pattern = {
	-- 				[".*%.blade%.php"] = "blade",
	-- 			},
	-- 		})
	--
	-- 		-- Menambahkan definisi instalasi untuk parser 'blade'
	-- 		vim.treesitter.language.register("php", "blade")
	-- 	end,
	-- },
}
