-- Load and configure the Telescope plugin with default settings.
require('telescope').setup {
  defaults = {
    -- Better for displaying long path in pickers
    path_display = { "smart" }
  },
  pickers = {
    live_grep = {
      additional_args = function(opts)
        return {"--hidden"}
      end
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'harpoon')

local builtin = require('telescope.builtin')

local function live_grep_search_hidden()
  builtin.live_grep {
    hidden = true,
    file_ignore_patterns = { ".git" },
  }
end

local function find_dotfiles()
  builtin.find_files {
    prompt = "~ dotfiles ~",
    cwd = "~/dotfiles",
    hidden = true,
    file_ignore_patterns = { ".git" },
  }
end

local function find_files_show_hidden()
  builtin.find_files {
    hidden = true,
    file_ignore_patterns = { ".git" },
  }
end

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', find_files_show_hidden, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', live_grep_search_hidden, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>sdf', find_dotfiles, { desc = '[S]earch [D]ot [F]iles' })

vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>gl', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gc', builtin.git_bcommits, {})


-- vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
-- vim.keymap.set('n', '<leader>FS', builtin.lsp_dynamic_workspace_symbols, {})


vim.keymap.set('n', '<leader>pv', '<Cmd>Neotree toggle<CR>', {})
vim.keymap.set('n', '<leader>tr', '<Cmd>TransparentToggle<CR>', {})
vim.keymap.set('n', '<leader>fml', '<Cmd>CellularAutomaton make_it_rain<CR>', {})

