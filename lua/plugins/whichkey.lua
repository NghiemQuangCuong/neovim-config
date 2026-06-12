-- This plugin is used to showing the keymap we already registed, make it easier to remember

return {
    'folke/which-key.nvim',
    event = 'VimEnter',
    dependencies = {
        'nvim-mini/mini.icons'
    },
    config = function()
        -- gain access to the which key plugin
        local which_key = require('which-key')

        -- call the setup function with default properties
        which_key.setup()

        -- Register prefixes for the different key mappings we have setup previously
        which_key.add({
            { "<leader>c", group = "[C]ode" },
            { "<leader>d", group = "[D]ebug" },
            { "<leader>e", group = "[E]xplorer" },
            { "<leader>s", group = "[S]earch" },
            { "<leader>g", group = "[G]it" },
            { "<leader>J", group = "[J]ava" },
            { "<leader>w", group = "[W]indow" },
            { "<leader>t", group = "[T]ab" },
            { "<leader>/", group = "Comment" },
            { "<leader>l", hidden = true },
            { "<leader>n", hidden = true },
        })
    end
}
