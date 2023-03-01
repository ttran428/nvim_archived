local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode.
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


-- Telescope keymaps
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- nvimtree keymaps
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- keymap("n", ";", ":", opts) -- no need to hit shift in normal mode. ;wq instead of :wq

-- keymap("n", "cs", ":colorscheme", opts) -- shortcut to change colorscheme, currently disabled because interferes with nvim-surround

-- insert line below staying in insert mode
keymap("n", "<leader>o", "o<Esc>", opts) 

-- surround keymaps to work with leap https://github.com/ggandor/leap.nvim/discussions/38
--
vim.g["surround_no_mappings"] = 1
-- Just the defaults copied here.
vim.keymap.set("n", "ds", "<Plug>Dsurround")
vim.keymap.set("n", "cs", "<Plug>Csurround")
vim.keymap.set("n", "cS", "<Plug>CSurround")
vim.keymap.set("n", "ys", "<Plug>Ysurround")
vim.keymap.set("n", "yS", "<Plug>YSurround")
vim.keymap.set("n", "yss", "<Plug>Yssurround")
vim.keymap.set("n", "ySs", "<Plug>YSsurround")
vim.keymap.set("n", "ySS", "<Plug>YSsurround")

-- The conflicting ones. Note that `<Plug>(leap-cross-window)`
-- _does_ work in Visual mode, if jumping to the same buffer,
-- so in theory, `gs` could be useful for Leap too...
vim.keymap.set("x", "gs", "<Plug>VSurround")
vim.keymap.set("x", "gS", "<Plug>VgSurround")

