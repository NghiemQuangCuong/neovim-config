-- ToggleTerm - Plugin for terminal in neovim

return {
    'akinsho/toggleterm.nvim',
    branch = "main",
    opts = {
        size = 20,
        open_mapping = [[<Space>T]],
        start_in_insert = true,
        insert_mappings = true,
        direction = "horizontal",
        shade_terminals = false,
        auto_scroll = true,
        close_on_exit = false
    },
}

