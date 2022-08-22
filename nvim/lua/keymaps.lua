-- Mappings for vanilla neovim
-- Plugin mappings in respective folders

-- Binding CAPS LOCK to ESC is done on OS level, not here

local opts =  { noremap = true, silent = true }

-- Leader: Space
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', opts)
vim.api.nvim_set_keymap('n', '<F1>', '<NOP>', opts)

-- Jump movements (within buffer)
vim.api.nvim_set_keymap('n', '<Leader>fb', '<cmd>e#<cr>', opts) -- just like having all jump / telescope movements w same leaders

-- Split into vert / horz panes
vim.api.nvim_set_keymap('n', '<Leader>ws', '<C-w>s', opts)
vim.api.nvim_set_keymap('n', '<Leader>wv', '<C-w>v', opts)

-- Move lines or (visually selected) block up and down
vim.api.nvim_set_keymap('v', "J", ":m '>+1<CR>gv=gv", opts)
vim.api.nvim_set_keymap('v', "K", ":m '<-2<CR>gv=gv", opts)

-- Move split panes to left/bottom/top/right
vim.api.nvim_set_keymap('n', '˙', '<C-W>H', opts)
vim.api.nvim_set_keymap('n', '∆', '<C-W>J', opts)
vim.api.nvim_set_keymap('n', '˚', '<C-W>K', opts)
vim.api.nvim_set_keymap('n', '¬', '<C-W>L', opts)

-- Move between panes to left/bottom/top/right
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', opts)
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', opts)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', opts)

-- Bind yank, yf: yank file path | yd: yank working directory | ya: yank all
vim.api.nvim_set_keymap('n', '<Leader>yf', "<cmd>let @+=expand('%:p')<CR>", opts)
vim.api.nvim_set_keymap('n', '<Leader>yd', "<cmd>let @+=expand('%:p:h')<CR>", opts)
vim.api.nvim_set_keymap('n', '<Leader>ya', "<cmd>%y+<CR>", opts)

-- Open .env files
vim.api.nvim_set_keymap('n', '<Leader>env', '<cmd>e .env<CR>', opts)

-- Terminal
vim.api.nvim_set_keymap('n', '<Leader>tt', '<cmd>vsplit term://zsh<CR>i', opts)
vim.api.nvim_set_keymap('n', '<Leader>th', '<cmd>terminal<CR>i', opts)
vim.api.nvim_set_keymap('n', '<Leader>t2', '<cmd>vsplit term://zsh<CR><C-w>s :terminal<CR>i', opts)
vim.api.nvim_set_keymap('t', '<Esc>', "<C-\\><C-n>", opts)

-- Replace all functions, use <Leader>rr for LSP replace all
function REPL_ALL()
	local findword = vim.fn.input("Find: ", "", "file")
	local replaceword = vim.fn.input("Replace: ", "", "file")
	vim.cmd('%s/' .. findword .. '/' .. replaceword .. "/gcI")
end

function REPL_A_CASE_INSEN()
	local findword = vim.fn.input("Find: ", "", "file")
	local replaceword = vim.fn.input("Replace: ", "", "file")
	vim.cmd('%s/' .. findword .. '/' .. replaceword .. "/gci")
end

-- Replace all mappings
vim.api.nvim_set_keymap('n', '<Leader>rw', '<cmd>lua REPL_ALL()<cr>', opts)
vim.api.nvim_set_keymap('n', '<Leader>ri', '<cmd>lua REPL_A_CASE_INSEN()<cr>', opts)


-- UNBINDINGS
-- ARROW KEYS
-- vim.api.nvim_set_keymap('n', '<Up>', ':echoe "Use k" <cr>', opts)
-- vim.api.nvim_set_keymap('n', '<Down>', ':echoe "Use j" <cr>', opts)
-- vim.api.nvim_set_keymap('n', '<Left>', ':echoe "Use h" <cr>', opts)
-- vim.api.nvim_set_keymap('n', '<Right>', ':echoe "Use l" <cr>', opts)
--
-- vim.api.nvim_set_keymap('i', '<Up>', '<esc>:echoe "Use k" <cr>', opts)
-- vim.api.nvim_set_keymap('i', '<Down>', '<esc>:echoe "Use j" <cr>', opts)
-- vim.api.nvim_set_keymap('i', '<Left>', '<esc>:echoe "Use h" <cr>', opts)
-- vim.api.nvim_set_keymap('i', '<Right>', '<esc>:echoe "Use l" <cr>', opts)
