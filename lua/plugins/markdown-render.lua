return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },            -- if you use the mini.nvim suite
    opts = {},
    config = function ()
        local markdown = require('render-markdown')

        vim.keymap.set("n", "<Space>me", markdown.enable, { desc = "[M]arkdown [E]nable" })
        vim.keymap.set("n", "<Space>md", markdown.disable, { desc = "[M]arkdown [D]isable" })
    end
}
