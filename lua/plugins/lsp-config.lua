return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "pyright", "rust_analyzer", "jdtls" ,"zls"},
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = vim.lsp.enable
      lspconfig("lua_ls", { capabilities = capabilities })
      lspconfig("clangd", { capabilities = capabilities })
      lspconfig("pyright", { capabilities = capabilities })
      lspconfig("rust_analyzer", { capabilities = capabilities })
      lspconfig("zls", { capabilities = capabilities })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP hover information" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP got to definition" })
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "LSP go to implementations" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "LSP go to references" })
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })
      vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "LSP rename" })
      vim.keymap.set('n', '<leader>D',vim.diagnostic.open_float, {desc = "Diagnostics"})
      vim.keymap.set('n', '<leader>d[', function() vim.diagnostic.goto_prev() end, {desc = "prev diagnostics"})
      vim.keymap.set('n', '<leader>d]', function() vim.diagnostic.goto_next() end, {desc = "next diagnostics"})
      vim.keymap.set('n', '<leader>dd',"<cmd>Telescope diagnostics<cr>", {desc = "Telescope diagnostics"})
    end,
  },
}
