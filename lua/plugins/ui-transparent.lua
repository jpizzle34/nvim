-- Make overlays/floats transparent across the UI
return {
  -- If you use TokyoNight (default in LazyVim)
  {
    "folke/tokyonight.nvim",
    optional = true,
    opts = {
      transparent = true, -- also removes main window bg if your terminal supports it
      styles = { sidebars = "transparent", floats = "transparent" },
      on_highlights = function(hl, c)
        -- Core
        hl.Normal = { bg = "none" }
        hl.NormalNC = { bg = "none" }
        hl.SignColumn = { bg = "none" }
        hl.NormalFloat = { bg = "none" }
        hl.FloatBorder = { bg = "none" }
        hl.Pmenu = { bg = "none" }
        hl.PmenuSel = { bg = "none" }

        -- Common plugin floats / sidebars
        hl.WhichKeyFloat = { bg = "none" }
        hl.LazyNormal = { bg = "none" }
        hl.MasonNormal = { bg = "none" }
        hl.NeoTreeNormal = { bg = "none" }
        hl.NeoTreeNormalNC = { bg = "none" }

        -- Telescope
        hl.TelescopeNormal = { bg = "none" }
        hl.TelescopeBorder = { bg = "none" }
        hl.TelescopePromptNormal = { bg = "none" }
        hl.TelescopePromptBorder = { bg = "none" }
        hl.TelescopeResultsNormal = { bg = "none" }
        hl.TelescopeResultsBorder = { bg = "none" }
        hl.TelescopePreviewNormal = { bg = "none" }
        hl.TelescopePreviewBorder = { bg = "none" }

        -- Noice (command popup / messages)
        hl.NoicePopup = { bg = "none" }
        hl.NoiceCmdlinePopup = { bg = "none" }
        hl.NoiceConfirm = { bg = "none" }
      end,
    },
  },

  -- If you use Catppuccin instead
  {
    "catppuccin/nvim",
    name = "catppuccin",
    optional = true,
    opts = {
      transparent_background = true,
      custom_highlights = function(colors)
        return {
          Normal = { bg = "none" },
          NormalNC = { bg = "none" },
          SignColumn = { bg = "none" },
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          Pmenu = { bg = "none" },
          PmenuSel = { bg = "none" },
          WhichKeyFloat = { bg = "none" },
          LazyNormal = { bg = "none" },
          MasonNormal = { bg = "none" },
          NeoTreeNormal = { bg = "none" },
          NeoTreeNormalNC = { bg = "none" },
          TelescopeNormal = { bg = "none" },
          TelescopeBorder = { bg = "none" },
          TelescopePromptNormal = { bg = "none" },
          TelescopePromptBorder = { bg = "none" },
          TelescopeResultsNormal = { bg = "none" },
          TelescopeResultsBorder = { bg = "none" },
          TelescopePreviewNormal = { bg = "none" },
          TelescopePreviewBorder = { bg = "none" },
          NoicePopup = { bg = "none" },
          NoiceCmdlinePopup = { bg = "none" },
          NoiceConfirm = { bg = "none" },
        }
      end,
    },
  },

  -- Telescope subtle transparency
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = { winblend = 10 }, -- 0..100; higher = more transparent
    },
  },

  -- Noice/Dressing windows transparency
  {
    "folke/noice.nvim",
    optional = true,
    opts = {
      views = {
        cmdline_popup = { win_options = { winblend = 10 } },
        popupmenu = { win_options = { winblend = 10 } },
        confirm = { win_options = { winblend = 10 } },
      },
    },
  },
  {
    "stevearc/dressing.nvim",
    optional = true,
    opts = {
      input = { win_options = { winblend = 10 } },
      select = {
        backend = { "telescope", "builtin" },
        builtin = { win_options = { winblend = 10 } },
      },
    },
  },

  -- nvim-notify background
  {
    "rcarriga/nvim-notify",
    optional = true,
    opts = {
      background_colour = "#00000000", -- fully transparent
    },
  },

  -- nvim-cmp menu/documentation windows
  {
    "hrsh7th/nvim-cmp",
    optional = true,
    opts = function(_, opts)
      local ok, cmp = pcall(require, "cmp")
      if not ok then
        return opts
      end
      opts.window = {
        completion = cmp.config.window.bordered({ winblend = 10 }),
        documentation = cmp.config.window.bordered({ winblend = 10 }),
      }
      return opts
    end,
  },
}
