require('core.functions')
vim.g.mapleader = " " --sets up leader key

local keymap = vim.keymap -- for conciseness

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- tab managment
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tb", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
keymap.set('n', '<leader>rf', ':lua run_file_extension()<CR>', { noremap = true, silent = true })

-- floating terminal
keymap.set("n","<leader>tt", "<cmd>FloatermToggle<CR>", {desc = "Toggle floating terminal"})

local vt = false
vim.keymap.set("n", "<leader>xv", function()
  vt = not vt
  vim.diagnostic.config({ virtual_text = vt })
end, { desc = "Toggle virtual text diagnostics" })

