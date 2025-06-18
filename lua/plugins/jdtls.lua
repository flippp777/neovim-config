return {
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    config = function()
      local jdtls = require("jdtls")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local root_markers = { "gradlew", ".git", "mvnw" }
      local root_dir = vim.fs.dirname(vim.fs.find(root_markers, { upward = true })[1])
      local jdtls_bin = vim.fn.exepath("jdtls")
      if root_dir and jdtls_bin ~= "" then
        jdtls.start_or_attach({ cmd = { jdtls_bin }, root_dir = root_dir, capabilities = capabilities })
      end
    end,
  },
}
