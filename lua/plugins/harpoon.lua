return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup({})
		-- REQUIRED

		-- Telescope UI

		-- basic telescope configuration
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find()
		end

		vim.keymap.set("n", "<leader>h", function()
			toggle_telescope(harpoon:list())
		end, { desc = "Harpoon" })

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Harpoon add" })

		-- vim.keymap.set("n", "<leader>h", function()
		-- 	harpoon.ui:toggle_quick_menu(harpoon:list())
		-- end, { desc = "Harpoon open quick menu" })

		vim.keymap.set("n", "<C-1>", function()
			harpoon:list():select(1)
		end, { desc = "Harpoon file 1" })
		vim.keymap.set("n", "<C-2>", function()
			harpoon:list():select(2)
		end, { desc = "Harpoon file 2" })
		vim.keymap.set("n", "<C-3>", function()
			harpoon:list():select(3)
		end, { desc = "Harpoon file 3" })
		vim.keymap.set("n", "<C-4>", function()
			harpoon:list():select(4)
		end, { desc = "Harpoon file 4" })
		vim.keymap.set("n", "<C-5>", function()
			harpoon:list():select(5)
		end, { desc = "Harpoon file 5" })
		vim.keymap.set("n", "<C-6>", function()
			harpoon:list():select(6)
		end, { desc = "Harpoon file 6" })
		vim.keymap.set("n", "<C-6>", function()
			harpoon:list():select(6)
		end, { desc = "Harpoon file 6" })
		vim.keymap.set("n", "<C-7>", function()
			harpoon:list():select(7)
		end, { desc = "Harpoon file 7" })
		vim.keymap.set("n", "<C-8>", function()
			harpoon:list():select(8)
		end, { desc = "Harpoon file 8" })
		vim.keymap.set("n", "<C-9>", function()
			harpoon:list():select(9)
		end, { desc = "Harpoon file 9" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-p>", function()
			harpoon:list():prev()
		end, { desc = "Harpoon previous" })
		vim.keymap.set("n", "<C-n>", function()
			harpoon:list():next()
		end, { desc = "Harpoon next" })
	end,
}
