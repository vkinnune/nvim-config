return {
  -- Required by many plugins
  "nvim-lua/plenary.nvim",

  -- Tmux navigator
  "christoomey/vim-tmux-navigator",
  {
    "github/copilot.vim",
    lazy = false, -- load immediately
  },
  {
    "habamax/vim-asciidoctor",
    ft = "asciidoc", -- only load on .adoc/.asciidoc files
  },
}
