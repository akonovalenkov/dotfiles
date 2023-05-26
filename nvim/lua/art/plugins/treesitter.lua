local plugin = {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = {
        "c",
        "lua",
        "luadoc",
        "vim",
        "vimdoc",
        "query",
        "javascript",
        "typescript",
        "tsx",
        "python",
        "rust",
        "regex",
        "bash",
        "markdown",
        "markdown_inline",
        "html",
        "json",
        "yaml",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    }
  end
}

return plugin
