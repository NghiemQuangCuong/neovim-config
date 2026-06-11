-- ToggleTerm - Plugin for terminal in neovim

return {
    'akinsho/toggleterm.nvim',
    branch = "main",
    opts = {
        size = 20,
        open_mapping = [[<Space>tt]],
        start_in_insert = true,
        insert_mappings = true,
        direction = "float", -- horizontal, vertical, float
        shade_terminals = false,
        auto_scroll = true,
        close_on_exit = false
    },
}

