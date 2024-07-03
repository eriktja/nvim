return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")

      -- FIND FILES
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
      vim.keymap.set("n", "<leader>fr", builtin.registers, {})
      vim.keymap.set("n", "<leader>fc", builtin.commands, {})
      vim.keymap.set("n", "<leader>bf", builtin.current_buffer_fuzzy_find, {})
      vim.keymap.set("n", "<leader>fw", builtin.current_buffer_tags, {})

      -- LSP
      vim.keymap.set("n", "<leader>gr", builtin.lsp_references, {})
      vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions, {})
      vim.keymap.set("n", "<leader>gi", builtin.lsp_implementations, {})
      vim.keymap.set("n", "<leader>qf", builtin.quickfix, {})
      vim.keymap.set("n", "<leader>lf", builtin.lsp_document_symbols, {})
      vim.keymap.set("n", "<leader>lw", builtin.lsp_workspace_symbols, {})
      -- vim.keymap.set("n", "<leader>sd", builtin.lsp_document_diagnostics, {})
      -- vim.keymap.set("n", "<leader>sD", builtin.lsp_workspace_diagnostics, {})


      ---- GIT
      vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
      vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
      vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
      vim.keymap.set("n", "<leader>gl", builtin.git_bcommits, {})
      vim.keymap.set("n", "<leader>gt", builtin.git_stash, {})

    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown,
            {},
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
