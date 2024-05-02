return { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = function()
    require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
        integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
    },
    })
    -- setup must be called before loading
    vim.cmd.colorscheme "catppuccin"
end
}

