require("neo-tree").setup({
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,
    filesystem = {
        hijack_netrw_behavior = "disabled",
        filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignore = false
        },
        follow_current_file = {
            enabled = true,
            leave_dirs_open = false,
        }
    },
    buffers = {
        follow_current_file = {
            enabled = true,
            leave_dirs_open = false,
        }
    }
})
