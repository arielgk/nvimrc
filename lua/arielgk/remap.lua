vim.g.mapleader = " "
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)  
vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)


vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", ",1", [[:BufferLineGoToBuffer 1<CR>]])
vim.keymap.set("n", ",2", [[:BufferLineGoToBuffer 2<CR>]])
vim.keymap.set("n", ",3", [[:BufferLineGoToBuffer 3<CR>]])
vim.keymap.set("n", ",4", [[:BufferLineGoToBuffer 4<CR>]])
vim.keymap.set("n", ",5", [[:BufferLineGoToBuffer 5<CR>]])
vim.keymap.set("n", ",6", [[:BufferLineGoToBuffer 6<CR>]])
vim.keymap.set("n", ",7", [[:BufferLineGoToBuffer 7<CR>]])
vim.keymap.set("n", ",8", [[:BufferLineGoToBuffer 8<CR>]])
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
-- test
-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>zzz", function()
    require("zen-mode").toggle({
        window = {
            width = .85 -- width will be 85% of the editor width
        }
    })
end)

-- on leader ttt open a terminal split in bottom and give 15 of the screen
--
vim.keymap.set("n", "<leader>ttt", function()
    vim.cmd("botright 15new")
    vim.cmd("terminal")
end)
-- easy way to exit terminal insert mode  
--
vim.keymap.set("t", "<C-c>", "<C-\\><C-n>")

-- on a terminal exit insert mode and run C-w p  
--
vim.keymap.set("t", "<C-w>", "<C-\\><C-n><C-w>p")
