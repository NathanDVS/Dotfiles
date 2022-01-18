require("bufferline").setup {
    options = {
        close_icon = "●",
        diagnostics = "nvim_lsp",
        show_buffer_icons = false,
        show_buffer_close_icons = true,
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        separator_style = "thick",
    }
}