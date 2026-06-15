return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = {
      [[ __    __                        __    __                        _______                ______ ________ ]],
      [[|  \  /  \                      |  \  /  \                      |       \              |      \        \]],
      [[| ▓▓ /  ▓▓ ______  _______      | ▓▓ /  ▓▓ ______  _______      | ▓▓▓▓▓▓▓\ ______       \▓▓▓▓▓▓\▓▓▓▓▓▓▓▓]],
      [[| ▓▓/  ▓▓ /      \|       \     | ▓▓/  ▓▓ /      \|       \     | ▓▓  | ▓▓/      \       | ▓▓    | ▓▓   ]],
      [[| ▓▓  ▓▓ |  ▓▓▓▓▓▓\ ▓▓▓▓▓▓▓\    | ▓▓  ▓▓ |  ▓▓▓▓▓▓\ ▓▓▓▓▓▓▓\    | ▓▓  | ▓▓  ▓▓▓▓▓▓\      | ▓▓    | ▓▓   ]],
      [[| ▓▓▓▓▓\ | ▓▓    ▓▓ ▓▓  | ▓▓    | ▓▓▓▓▓\ | ▓▓    ▓▓ ▓▓  | ▓▓    | ▓▓  | ▓▓ ▓▓  | ▓▓      | ▓▓    | ▓▓   ]],
      [[| ▓▓ \▓▓\| ▓▓▓▓▓▓▓▓ ▓▓  | ▓▓    | ▓▓ \▓▓\| ▓▓▓▓▓▓▓▓ ▓▓  | ▓▓    | ▓▓__/ ▓▓ ▓▓__/ ▓▓     _| ▓▓_   | ▓▓   ]],
      [[| ▓▓  \▓▓\\▓▓     \ ▓▓  | ▓▓    | ▓▓  \▓▓\\▓▓     \ ▓▓  | ▓▓    | ▓▓    ▓▓\▓▓    ▓▓    |   ▓▓ \  | ▓▓   ]],
      [[ \▓▓   \▓▓ \▓▓▓▓▓▓▓\▓▓   \▓▓     \▓▓   \▓▓ \▓▓▓▓▓▓▓\▓▓   \▓▓     \▓▓▓▓▓▓▓  \▓▓▓▓▓▓      \▓▓▓▓▓▓   \▓▓   ]],
    }

    dashboard.section.buttons.val = {
        dashboard.button("e", "  New file", "<cmd>ene <CR>"),
        dashboard.button("SPC s f", "󰈞  Find file"),
        dashboard.button("SPC s .", "󰋚  Recent files"),
        dashboard.button("SPC s g", "󰈬  Live grep"),
        dashboard.button("SPC s k", "  Keymaps"),
        dashboard.button("SPC s h", "󰋖  Help"),
        }
    alpha.setup(dashboard.opts)
  end,
}
