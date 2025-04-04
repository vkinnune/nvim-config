return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = {
      "lua",
      "python",
      "bash",
      "json",
      "yaml",
      "markdown", -- add more as you need
    },
    ignore_install = { "dockerfile" }, -- skip dockerfile parser for now
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
