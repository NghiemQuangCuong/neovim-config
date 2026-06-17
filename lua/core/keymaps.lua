vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local opts = { noremap = true, silent = true }

-- Save file
vim.keymap.set({"n", "i"}, "<C-s>", "<Esc><cmd>w<CR>", opts)

-- quit file
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

-- Find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Toggle line wrapping
vim.keymap.set(
	"n",
	"<leader>lw",
	"<cmd>set wrap!<CR>",
	vim.tbl_extend("force", opts, { desc = "Toggle [L]ine [W]rapping" })
)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Diagnostic keymaps
vim.keymap.set("n", "[d", function()
	vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Go to previous diagnostic message" })

vim.keymap.set("n", "]d", function()
	vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Go to next diagnostic message" })

-- Window management
vim.keymap.set("n", "<leader>wv", "<C-w>v", vim.tbl_extend("force", opts, { desc = "Split [W]indow [V]ertical" })) -- split window vertically
vim.keymap.set("n", "<leader>wh", "<C-w>s", vim.tbl_extend("force", opts, { desc = "Split [W]indow [H]orizontally" })) -- split window horizontally
vim.keymap.set("n", "<leader>we", "<C-w>=", vim.tbl_extend("force", opts, { desc = "Make split [W]indows [E]qually" })) -- make split windows equal width & height
vim.keymap.set("n", "<leader>wx", ":close<CR>", vim.tbl_extend("force", opts, { desc = "Close current [W]indow" })) -- close current split window

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", vim.tbl_extend("force", opts, { desc = "Go to upper window" }))
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", vim.tbl_extend("force", opts, { desc = "Go to bottom window" }))
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", vim.tbl_extend("force", opts, { desc = "Go to left window" }))
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", vim.tbl_extend("force", opts, { desc = "Go to right window" }))

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", vim.tbl_extend("force", opts, { desc = "[T]ab [O]pen new" })) -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", vim.tbl_extend("force", opts, { desc = "[T]ab Close" })) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", vim.tbl_extend("force", opts, { desc = "Go to [T]ab [N]ext" })) --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", vim.tbl_extend("force", opts, { desc = "Go to [T]ab [P]revious" })) --  go to previous tab

-- Resize with arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", vim.tbl_extend("force", opts, { desc = "Resize -2 height window" }))
vim.keymap.set("n", "<Down>", ":resize +2<CR>", vim.tbl_extend("force", opts, { desc = "Resize +2 height window" }))
vim.keymap.set(
	"n",
	"<Left>",
	":vertical resize -2<CR>",
	vim.tbl_extend("force", opts, { desc = "Resize -2 width window" })
)
vim.keymap.set(
	"n",
	"<Right>",
	":vertical resize +2<CR>",
	vim.tbl_extend("force", opts, { desc = "Resize +2 width window" })
)

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", vim.tbl_extend("force", opts, { desc = "Next Buffer" }))
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", vim.tbl_extend("force", opts, { desc = "Previous Buffer" }))
vim.keymap.set("n", "<leader><Tab>", ":Bdelete<CR>", vim.tbl_extend("force", opts, { desc = "Delete Buffer" })) -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", vim.tbl_extend("force", opts, { desc = "New Buffer" })) -- new buffer

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x', vim.tbl_extend("force", opts, { desc = "Delete (without copy to register)" }))

vim.keymap.set("t", "<C-Space>", [[<C-\><C-n>]], { desc = "Exit terminal mode" }) -- Exit terminal mode, to go back terminal mode again press i (insert)
vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]])
vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]])
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]])
vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]])

-- open file in the browser
vim.keymap.set("n", "<leader>fo", '<cmd>!firefox "%"<cr>', { desc = "[F]ile [O]pen in FireFox" })
vim.keymap.set("n", "<leader>fr", '<cmd>Neotree reveal<cr>', { desc = "[F]ile [R]eveal in Neotree" })

