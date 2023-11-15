return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    -- build = "cd app && yarn install",
    build = ":call mkdp#util#install()",
    config = function()
      vim.g.mkdp_auto_start = 0
      vim.g.mkdp_auto_close = 0
      vim.g.mkdp_refresh_slow = 0
      vim.g.mkdp_command_for_global = 0
      vim.g.mkdp_echo_preview_url = 1
      -- vim.g.mkdp_browser = "chrome"
      vim.g.mkdp_open_to_the_world = 0
      vim.g.mkdp_page_title = "Markdown Preview"
      vim.g.mkdp_filetypes = { "markdown", "pandoc.markdown", "md", "mdx" }
      -- vim.g.mkdp_theme = "dark"
      vim.g.mkdp_preview_options = {
        -- markdown-it options
        -- see: https://markdown-it.github.io/markdown-it/#MarkdownIt.new
        -- for example
        html = true,
        linkify = true,
        typographer = true,

        -- markdown-it plugins
        -- for example
        -- 'markdown-it-task-lists': true,
        -- 'markdown-it-katex': true,
      }
      vim.g.mkdp_markdown_css = "~/notion.css"
    end,
  },
}
