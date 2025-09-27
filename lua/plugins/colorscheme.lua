---[[
--
return {
  -- add everforest
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.g.everforest_background = "medium"
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_better_performance = 1
      vim.g.everforest_diagnostic_virtual_text = "colored"
      vim.g.everforest_diagnostic_text_highlight = 1
      vim.g.everforest_diagnostic_line_highlight = 1
      vim.g.everforest_show_eob = 0
    end,
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    version = "*",
    init = function()
      package.preload["catppuccin.special.bufferline"] = function()
        local ok, m = pcall(require, "catppuccin.groups.integrations.bufferline")
        if not ok or type(m) ~= "table" then
          m = {}
        end
        -- Back-compat: LazyVim expects .get_theme; Catppuccin exports .get
        if not m.get_theme and type(m.get) == "function" then
          m.get_theme = m.get
        end
        return m
      end
    end,
    transparent_background = true,
    --  -- ② keep your opts exactly as before (you can also add bufferline = true here)
    opts = function(_, opts)
      -- merge your existing opts
      opts.transparent_background = true
      opts.integrations = vim.tbl_deep_extend("force", opts.integrations or {}, {
        alpha = true,
        cmp = true,
        flash = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        -- explicitly enable bufferline highlights too
        -- bufferline = true,
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        noice = true,
        notify = true,
        neotree = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      })
      return opts
    end,
    -- opts = {
    --   transparent_background = true,
    --   integrations = {
    --     alpha = true,
    --     cmp = true,
    --     flash = true,
    --     gitsigns = true,
    --     illuminate = true,
    --     indent_blankline = { enabled = true },
    --     lsp_trouble = true,
    --     mason = true,
    --     mini = true,
    --     native_lsp = {
    --       enabled = true,
    --       underlines = {
    --         errors = { "undercurl" },
    --         hints = { "undercurl" },
    --         warnings = { "undercurl" },
    --         information = { "undercurl" },
    --       },
    --     },
    --     navic = { enabled = true, custom_bg = "lualine" },
    --     neotest = true,
    --     noice = true,
    --     notify = true,
    --     neotree = true,
    --     semantic_tokens = true,
    --     telescope = true,
    --     treesitter = true,
    --     which_key = true,
    --   },
    -- },
    --
  },
  --
  -- {
  --   "catppuccin/nvim",
  --   opts = function(_, opts)
  --     local module = require("catppuccin.groups.integrations.bufferline")
  --     if module then
  --       module.get = module.get_theme
  --     end
  --     return opts
  --   end,
  -- },

  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("monokai-pro").setup({
        transparent_background = false,
        terminal_colors = true,
        devicons = false, -- highlight the icons of `nvim-web-devicons`
        styles = {
          comment = { italic = true },
          keyword = { italic = true }, -- any other keyword
          type = { italic = true }, -- (preferred) int, long, char, etc
          storageclass = { italic = true }, -- static, register, volatile, etc
          structure = { italic = true }, -- struct, union, enum, etc
          parameter = { italic = true }, -- parameter pass in function
          annotation = { italic = true },
          tag_attribute = { italic = true }, -- attribute of tag in reactjs
        },
        filter = "machine", -- classic | octagon | pro | machine | ristretto | spectrum
        -- Enable this will disable filter option
        day_night = {
          enable = false, -- turn off by default
          day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
          night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
        },
        inc_search = "background", -- underline | background
        background_clear = {
          "toggleterm",
          "float_win",
          -- "renamer",
          "telescope",
          "notify",
          "which-key",
          -- "nvim-tree",
          -- "neo-tree",
          -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
        }, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
        plugins = {
          -- bufferline = {
          --     underline_selected = false,
          --     underline_visible = false,
          -- },
          indent_blankline = {
            context_highlight = "default", -- default | pro
            context_start_underline = false,
          },
        },
      })
    end,
  },

  ---[[
  --
  -- Configure LazyVim to load everforest
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

--]]
