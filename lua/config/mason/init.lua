local servers = { "sumneko_lua", "cssls", "intelephense", "dotls", "html", "tsserver", "jsonnet_ls", "vuels" }

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
  ensure_installed = servers
})

require("config.lsp.settings").setup()
local on_attach = require('config.lsp.keymaps').on_attach

require('lspconfig')['tsserver'].setup {
  on_attach = on_attach,
}

require("lspconfig").sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

require("lspconfig").intelephense.setup {
  on_attach = on_attach,
}
require("lspconfig").html.setup {
  on_attach = on_attach,
}
require("lspconfig").vuels.setup {
  on_attach = on_attach,
}
