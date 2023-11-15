return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
    },
    opts = {
      -- highlights = {
      --   fill = {
      --     bg = "#1d2226",
      --     fg = "#1d2226",
      --   },
      --   separator = {
      --     --fg = "#272e33",
      --     fg = "#1d2226",
      --     bg = "#1d2226",
      --   },
      --   separator_selected = {
      --     fg = "#272e33",
      --     --bg = "#272e33",
      --   },
      --   offset_separator = {
      --     bg = "#272e33",
      --     -- fg = "#272e33",
      --   },
      -- },
      options = {
        -- separator_style = "slope", --separator_style = { "/", "/" },
        diagnostics = "nvim_lsp",
        always_show_bufferline = false,
        diagnostics_indicator = function(_, _, diag)
          local icons = require("lazyvim.config").icons.diagnostics
          local ret = (diag.error and icons.Error .. diag.error .. " " or "")
            .. (diag.warning and icons.Warn .. diag.warning or "")
          return vim.trim(ret)
        end,
        indicator = {
          --style = "none",
        },
        offsets = {
          {
            filetype = "neo-tree",
            -- text = "Neo-tree",
            highlight = "Directory",
            text_align = "left",
            separator = true,
          },
        },
      },
    },
  },
}
