return {
	vim.keymap.set("n", "<leader>sob", "<cmd>ObsidianBacklinks<CR>", { desc = "Obsidian backlinks" }),
	vim.keymap.set("n", "<leader>sod", "<cmd>ObsidianDailies<CR>", { desc = "Obsidian Dailies" }),
	vim.keymap.set("n", "<leader>soc", "<cmd>ObsidianCheck<CR>", { desc = "Obsidian Check" }),
	vim.keymap.set("n", "<leader>soD", "<cmd>ObsidianDebug<CR>", { desc = "Obsidian Debug" }),
	vim.keymap.set("n", "<leader>soq", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Obsidian Quick Switch" }),
	vim.keymap.set("n", "<leader>sot", "<cmd>ObsidianTags<CR>", { desc = "Obsidian Tags" }),
	vim.keymap.set("n", "<leader>sow", "<cmd>ObsidianWorkspace<CR>", { desc = "Obsidian Workspaces" }),
	vim.keymap.set("n", "<leader>sol", "<cmd>ObsidianLink<CR>", { desc = "Obsidian Link" }),
	vim.keymap.set("n", "<leader>soe", "<cmd>ObsidianExtractNote<CR>", { desc = "Obsidian Extract Note" }),
	vim.keymap.set("n", "<leader>sos", "<cmd>ObsidianSearch<CR>", { desc = "Obsidian Search" }),
}

-- vim: ts=2 sts=2 sw=2 et
