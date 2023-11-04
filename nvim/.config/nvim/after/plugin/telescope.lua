-- Load and configure the Telescope plugin with default settings.
require('telescope').setup{
    defaults = {
        -- Better for displaying long path in pickers
        path_display = { "smart" }
    }
}

local builtin = require('telescope.builtin')

-- Keymaps
vim.keymap.set('n', '<leader>e', builtin.oldfiles, {})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fh', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>FS', builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gt', builtin.lsp_type_definitions, {})
vim.keymap.set('n', 'gi', builtin.lsp_implementations, {})
vim.keymap.set('n', 'gc', builtin.lsp_incoming_calls, {})

vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})

