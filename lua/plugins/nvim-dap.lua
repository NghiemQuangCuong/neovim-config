-- This plugin is use for debug adapter

return {
    "mfussenegger/nvim-dap",
    dependencies = {
        -- ui plugins to make debugging simplier
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio"
    },
    config = function()
        -- gain access to the dap plugin and its functions
        local dap = require("dap")
        -- gain access to the dap ui plugin and its functions
        local dapui = require("dapui")

        -- Setup the dap ui with default configuration
        dapui.setup()

         -- setup an event listener for when the debugger is launched
        local function set_debug_keymaps()
            -- when the debugger is launched open up the debug ui
            dapui.open()
            vim.keymap.set("n", "<F1>", dap.step_out, {desc = "DAP Step Out"})
            vim.keymap.set("n", "<F2>", dap.step_over, {desc = "DAP Step Over"})
            vim.keymap.set("n", "<F3>", dap.step_into, {desc = "DAP Step Into"})
            vim.keymap.set("n", "<F4>", dap.restart_frame, {desc = "DAP Restart Frame"})
        end

        local function clear_debug_keymaps()
            pcall(vim.keymap.del, "n", "<F1>")
            pcall(vim.keymap.del, "n", "<F2>")
            pcall(vim.keymap.del, "n", "<F3>")
            pcall(vim.keymap.del, "n", "<F4> ")
        end

        dap.listeners.before.event_initialized['before_initialized'] = function()
            dapui.open()
            set_debug_keymaps()
        end

        dap.listeners.before.event_terminated['before_terminated'] = function()
            clear_debug_keymaps()
        end

        -- set a vim motion for <Space> + d + t to toggle a breakpoint at the line where the cursor is currently on
        vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, { desc = "[D]ebug [T]oggle Breakpoint" })

        -- set a vim motion for <Space> + d + s to start the debugger and launch the debugging ui
        vim.keymap.set("n", "<leader>ds", dap.continue, { desc = "[D]ebug [S]tart" })

        -- set a vim motion for <Space> + d + T to stop the debugger
        vim.keymap.set("n", "<leader>dT", dap.terminate, { desc = "[D]ebug [T]erminate" })

        -- set a vim motion to close the debugging ui
        vim.keymap.set("n", "<leader>dc", dapui.close, {desc = "[D]ebug [C]lose UI"})

        -- set a vim motion to open the debugging ui
        vim.keymap.set("n", "<leader>do", dapui.open, {desc = "[D]ebug [O]pen UI"})

        vim.fn.sign_define("DapBreakpoint", {
            text = "",
            texthl = "DapBreakpoint",
        })

        vim.api.nvim_set_hl(0, "DapBreakpoint", {
            fg = "#E82424",
        })


    end
}
