local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "pyright", "rust_analyzer" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--lspconfig.pyright.setup {
--  on_attach = on_attach,
--  capabilities = capabilities,
--  cmd = { "pyright-langserver", "--stdio" },
--  filetypes = { "python" },
--  settings = {
--    python = {
--      analysis = {
--        autoSearchPaths = true,
--        diagnosticMode = "workspace",
--        useLibraryCodeForTypes = true
--      }
--    }
--  },
--  single_file_support = true,
--}
--
--lspconfig.rust_analyzer.setup {
--  on_attach = on_attach,
--  capabilities = capabilities,
--  cmd = { "rust_analyser" },
--  filetypes = { "rust" },
--  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
--}
