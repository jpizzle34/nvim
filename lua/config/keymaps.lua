-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n" }, "<LEADER>ns", require("package-info").show, { silent = true, noremap = true })
-- Hide dependency versions
vim.keymap.set({ "n" }, "<LEADER>nn", require("package-info").hide, { silent = true, noremap = true })
-- Toggle dependency versions
vim.keymap.set({ "n" }, "<LEADER>nn", require("package-info").toggle, { silent = true, noremap = true })
-- Update dependency on the line
vim.keymap.set({ "n" }, "<LEADER>nn", require("package-info").update, { silent = true, noremap = true })
-- Delete dependency on the line
vim.keymap.set({ "n" }, "<LEADER>nd", require("package-info").delete, { silent = true, noremap = true })
-- Install a new dependency
vim.keymap.set({ "n" }, "<LEADER>ni", require("package-info").install, { silent = true, noremap = true })
-- Install a different dependency version
vim.keymap.set({ "n" }, "<LEADER>np", require("package-info").change_version, { silent = true, noremap = true })

-- Jump to beginning/end of line
-- vim.keymap.set({ "n", "v" }, "<C-h>", "0", { noremap = true })
-- vim.keymap.set({ "n", "v" }, "<C-l>", "$", { noremap = true })
--

-- Github Copilot
-- vim.keymap.set("i", "<Tab>", function()
--   if require("copilot.suggestion").is_visible() then
--     require("copilot.suggestion").accept()
--   else
--     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
--   end
-- end, {
--   silent = true,
-- })
