-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Toggle comment (VS Code style)
-- macOS: Cmd + /
vim.keymap.set("n", "<D-/>", "gcc", { remap = true, silent = true })
vim.keymap.set("v", "<D-/>", "gc", { remap = true, silent = true })

-- Linux / Windows: Ctrl + /
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, silent = true })
vim.keymap.set("v", "<C-/>", "gc", { remap = true, silent = true })
