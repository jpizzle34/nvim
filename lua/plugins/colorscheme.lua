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
    end,

    --[[
    --
    config = function()
      require("everforest").setup({
        -- Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
        -- Default is "medium".
        background = "soft",
        -- How much of the background should be transparent. Options are 0, 1 or 2.
        -- Default is 0.
        --
        -- 2 will have more UI components be transparent (e.g. status line
        -- background).
        transparent_background_level = 0,
        -- Whether italics should be used for keywords, builtin types and more.
        italics = true,
        -- Disable italic fonts for comments. Comments are in italics by default, set
        -- this to `true` to make them _not_ italic!
        disable_italic_comments = false,
      })
    end,
    --]]
  },

  ---[[
  --
  -- Configure LazyVim to load everforest
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}

--]]
