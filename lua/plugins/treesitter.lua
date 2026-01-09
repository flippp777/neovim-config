return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
  end,
  config = function()
    local treesitter_path = vim.fn.stdpath("data") .. "/lazy/nvim-treesitter"
    if vim.fn.isdirectory(treesitter_path) == 1 then
      vim.opt.rtp:prepend(treesitter_path)
    end
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "c", "cpp", "python", "rust"},
      auto_install = true,
      highlight = { enable = true },
      indent = {enable = true},
    })
  end
}
