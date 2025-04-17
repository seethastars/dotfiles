return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',

  opts = {
    ensure_installed = {"c", "lua", "query", "markdown", "markdown_inline"},

    sync_installed = false,
    auto_install = true,

    highlight_enable = { enable = true },
    indent = { enable = true},

    additional_vim_regex_highlighting = false,
  },
}
