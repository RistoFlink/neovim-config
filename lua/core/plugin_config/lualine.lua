--Gruvbox looks ugly to me so using everforest for this..
require("lualine").setup{
	options = {
		icons_enabled = true,
		theme = "everforest",
		component_separators = "|",
		section_separators = "",
	},
    sections = {
        lualine_a = {
            {
                'filename',
                path = 1,
            }
        }
    }
}
