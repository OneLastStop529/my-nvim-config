return {
  {
    "stevearc/aerial.nvim",
    cmd = { "AerialToggle", "AerialOpen" },
    keys = {
      { "<leader>o", "<cmd>AerialToggle right<CR>", desc = "Outline (right)" },
    },
    opts = {
      layout = {
        placement = "edge",
        default_direction = "right",
        width = 30,
      },
      backends = { "lsp", "treesitter", "markdown" },
    },
  },
}
