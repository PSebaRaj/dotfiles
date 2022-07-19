local augroup = vim.api.nvim_create_augroup
ThePrimeagenGroup = augroup('PSEBARAJ', {})

-- Remove empty space beyond end of each line upon save
vim.api.nvim_create_autocmd({"BufWritePre"}, {
    group = PSEBARAJ,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

vim.api.nvim_create_autocmd({"BufWritePre"}, {
    group = PSEBARAJ,
    pattern = "*.tsx,*.ts,*.jsx,*.js",
    command = "EslintFixAll",
})


-- NEED TO PORT TO LUA:
-- Open file at place last left of at
-- if has("autocmd")
--  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
--    \| exe "normal! g'\"" | endif
--endif

