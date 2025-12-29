-- ~/.config/nvim/lua/plugins/go.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {
        settings = {
          gopls = {
            gofumpt = true, -- stricter gofmt
            usePlaceholders = true,
            staticcheck = true,
          },
        },
      },
    },
  },
}
