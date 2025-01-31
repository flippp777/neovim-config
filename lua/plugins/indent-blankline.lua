return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {},
	config = function()
  --   local highlight = { "RainbowViolet"}
  --   local hooks = require("ibl.hooks")
		--
  --   hooks.register(hooks.type.HIGHLIGHT_SETUP, function ()
  --     vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
  --   end)
		-- require("ibl").setup({ indent = { highlight = highlight } })
    require("ibl").setup()
	end,
}
