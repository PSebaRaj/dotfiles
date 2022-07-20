local augroup = vim.api.nvim_create_augroup
PSEB_GROUP = augroup('PSEBARAJ', {})

-- Remove empty space beyond end of each line upon save
vim.api.nvim_create_autocmd({"BufWritePre"}, {
    group = PSEB_GROUP,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

-- Eslint
vim.api.nvim_create_autocmd({"BufWritePre"}, {
    group = PSEB_GROUP,
    pattern = { "*.tsx", "*.ts", "*.jsx", "*.js" } ,
    command = "EslintFixAll",
})

-- Quality of life
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "gitcommit", "text" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

-- NEED TO PORT TO LUA:
-- Open file at place last left of at
vim.cmd([[
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
]])

