require("lualine").setup{
	options = {
		icons_enabled = true,
		theme = "everforest",
		component_separators = "|",
		section_separators = "",
	},
    sections = {
        lualine_c = {
            {
                'filename',
                path = 1,
            }
        }
    }
}