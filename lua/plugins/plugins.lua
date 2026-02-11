return {
  {
    "mistricky/codesnap.nvim",
    build = "make",
    opts = {
      watermark = "",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    enabled = not vim.g.vscode,
  },
}
