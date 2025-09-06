return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = [[
_____________________________________________________________/\\\\\\___________________
  _______/\\\_________________________________________________\////\\\___________________
    ______\///____/\\\\\\\\\___/\\\________________________________\/\\\___________________
      _______/\\\__/\\\/////\\\_\///___/\\\\\\\\\\\__/\\\\\\\\\\\____\/\\\________/\\\\\\\\__
        ______\/\\\_\/\\\\\\\\\\___/\\\_\///////\\\/__\///////\\\/_____\/\\\______/\\\/////\\\_
          ______\/\\\_\/\\\//////___\/\\\______/\\\/_________/\\\/_______\/\\\_____/\\\\\\\\\\\__
            __/\\_\/\\\_\/\\\_________\/\\\____/\\\/_________/\\\/_________\/\\\____\//\\///////___
              _\//\\\\\\__\/\\\_________\/\\\__/\\\\\\\\\\\__/\\\\\\\\\\\__/\\\\\\\\\__\//\\\\\\\\\\_
                __\//////___\///__________\///__\///////////__\///////////__\/////////____\//////////__
]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
