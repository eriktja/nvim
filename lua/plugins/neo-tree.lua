return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		--"3rd/image.nvim",  --Optional image support in preview window: See `# Preview Mode` for more information
	},

	-- keymap
	vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal toggle left<CR>"),
	vim.keymap.set("n", "<C-b>", ":Neotree buffers reveal toggle left<CR>"),
	-- vim.keymap.set("n", "<C-g>", ":Neotree git_status reveal toggle right<CR>"),
	--vim.keymap.set("n", "<leader>g", ":Neotree git_status reveal toggle right<CR>"),
}
