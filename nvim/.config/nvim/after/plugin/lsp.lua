-- Import the lsp-zero module which provides a simplified interface for setting up LSP.
local lsp_zero = require('lsp-zero')

-- Configure the actions to take when a language server attaches to a buffer.
lsp_zero.on_attach(function(client, bufnr)
    -- Default keybindings are set up for the buffer that the language server attaches to.
    -- These keybindings are predefined by lsp-zero and cover common LSP functions.
    -- For a description of available keybindings, you can check out the lsp-zero documentation.
    lsp_zero.default_keymaps({buffer = bufnr})
end)

-- Set up the 'mason' plugin which manages LSP servers, DAP servers, linters, and formatters.
require('mason').setup({})

-- Set up the 'mason-lspconfig' which integrates the 'mason' plugin with 'nvim-lspconfig'.
require('mason-lspconfig').setup({
    ensure_installed = {
        "kotlin_language_server",
        "tsserver",
        "angularls",
        "eslint",
        "jsonls",
        "lua_ls",
        "rust_analyzer",
        "gradle_ls",
        "graphql",
        "html",
        "pyright",
        "tailwindcss",
        "lemminx",
        "yamlls",
        "helm_ls",
        "dockerls",
        "docker_compose_language_service",
    },
    -- Set up default handlers for all installed LSP servers using lsp-zero's setup function.
    handlers = {
        lsp_zero.default_setup,
    },
})

