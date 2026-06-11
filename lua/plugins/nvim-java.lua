return {
    'nvim-java/nvim-java',
    config = function()
        require('java').setup()
        vim.lsp.enable('jdtls')


        -- Keymaps (attach globally, works when LSP is active)
        vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, { desc = "[C]ode [H]over Documentation" })
        vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "[C]ode Goto [D]efinition" })

        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ctions" })

        vim.keymap.set(
            "n",
            "<leader>cr",
            require("telescope.builtin").lsp_references,
            { desc = "[C]ode Goto [R]eferences" }
        )

        vim.keymap.set(
            "n",
            "<leader>ci",
            require("telescope.builtin").lsp_implementations,
            { desc = "[C]ode Goto [I]mplementations" }
        )

        vim.keymap.set("n", "<leader>cR", vim.lsp.buf.rename, { desc = "[C]ode [R]ename" })

        vim.keymap.set("n", "<leader>cD", vim.lsp.buf.declaration, { desc = "[C]ode [D]eclaration" })
    end
}
