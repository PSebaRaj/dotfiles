-- hh ("harpoon") opens the harpoon menu
vim.keymap.set("n", "<Leader>hh", function ()
	require("harpoon.ui").toggle_quick_menu()
end, { noremap=true, silent=true })

-- ha ("heapoon add") adds current file to harpoon list
vim.keymap.set("n", "<Leader>ha", function ()
	require("harpoon.mark").add_file()
end, { noremap=true, silent=true })

-- hs ("harpoon select") prompts for input and moves to that
vim.keymap.set("n", "<Leader>hd", function ()
	require("harpoon.ui").nav_next()
end, { noremap=true, silent=true })
vim.keymap.set("n", "<Leader>hs", function ()
	require("harpoon.ui").nav_prev()
end, { noremap=true, silent=true })

-- dd when over a file in harpoon will delete it!

