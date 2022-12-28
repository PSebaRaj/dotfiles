vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.showmatch = true
vim.opt.ignorecase = true

vim.opt.errorbells = false
vim.opt.clipboard = "unnamedplus"

vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
-- hot take: not expanding tabs is better

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- prefer hl on, then :noh after
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
-- vim.opt.isfname:append("@-@")

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

vim.opt.colorcolumn = "100"
vim.opt.cursorline = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.laststatus = 3

-- disable for actual use, just for ease of setup
vim.opt.mouse = "a"
