vim.keymap.set("n", "<leader>pv", "<cmd>Neotree<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
-- Move selected lines up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move line down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move line up

-- Better screen-centered movements
vim.keymap.set("n", "<C-d>", "<C-d>zz")  -- Half-page down, centered
vim.keymap.set("n", "<C-u>", "<C-u>zz")  -- Half-page up, centered
vim.keymap.set("n", "n", "nzzzv")  -- Next search result, centered
vim.keymap.set("n", "N", "Nzzzv")  -- Previous search result, centered

-- Paste over without copying replaced text
vim.keymap.set("x", "<leader>p", [["_dP]])

-- System clipboard integration
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- Copy to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- Copy line to system clipboard

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")  -- Next error
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")  -- Previous error
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")  -- Next location list item
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")  -- Previous location list item

-- Quick search and replace for word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")  -- Source (reload) the current file
end)

-- Delete current line without pressing Enter
vim.keymap.set("n", "<leader>d", "\"_dd")

-- Or if you want it to work with motions without pressing Enter, you can make it an operator
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")  -- Maps Ctrl-c to Escape in insert mode
vim.keymap.set("n", "Q", "<nop>")      -- Disables the Q command (Ex mode)

vim.keymap.set("n", "J", "mzJ`z")
