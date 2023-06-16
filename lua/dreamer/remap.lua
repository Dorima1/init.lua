vim.g.mapleader = " "
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keeps cursor in place when using capital J
vim.keymap.set("n", "J", "mzJ`z")

-- keeps cursor in the middle when doing half-page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keeps cursor in the middle when doing search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- supposed greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")
-- further explanation, so let's say you have:
-- foo
-- bar
-- and you want to paste foo over bar, you highlight over bar and paste foo on it.
-- It will delete the highlighted word which is bar from the paste board or whatever
-- and replace it with foo so you can paste foo as much as you want!

-- next greatest remap ever: asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
-- pasting stuff elsewhere outside of vim

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

vim.keymap.set("n", "<leader>pg", vim.cmd.VimBeGood)

vim.keymap.set("n", "<F8>", vim.cmd.TagbarToggle)

