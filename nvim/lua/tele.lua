local icons = require "icons"

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    prompt_prefix = icons.ui.Telescope .. " ",
	mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
	  -- Default configuration for builtin pickers goes here:
	  -- picker_name = {
		  --   picker_config_key = value,
		  --   ...
		  -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

-- Find file by name
vim.keymap.set("n", "<Leader>ff", function ()
	require('telescope.builtin').find_files()
end, { noremap = true })

-- Grep (prefer this over live_grep)
vim.keymap.set("n", "<Leader>fg", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end, { noremap = true })

-- Grep for word under cursor
vim.keymap.set("n", "<Leader>fw", function()
    require('telescope.builtin').grep_string()
end, { noremap = true })

-- Find files by name, including hidedn files
vim.keymap.set("n", "<Leader>fh", function()
	require('telescope.builtin').find_files({hidden = true})
end, { noremap = true })

-- Open Telescope in range of ENTIRE git repo
vim.keymap.set("n", "<Leader>fa", function()
	require('telescope.builtin').git_files({hidden = true})
end, { noremap = true })

-- View changes in git repo
vim.keymap.set("n", "<Leader>git", function()
	require('telescope.builtin').git_status({hidden = true})
end, { noremap = true })

-- TS is love, TS is life
-- vim.keymap.set("n", "<Leader>ft", function()
	-- require('telescope.builtin').treesitter({hidden = true})
-- end, { noremap = true })
