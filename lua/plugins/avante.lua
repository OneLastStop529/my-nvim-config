-- lua/plugins/avante.lua
return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "stevearc/dressing.nvim",
    },
    opts = {
      -- default keymaps are usually fine; you’ll get a side panel + apply patches
      provider = "ollama", -- or "openai", "local", etc.

      temperature = 0.2,
      max_tokens = 2048,

      -- mappings = {
      --   submmit = {
      --     insert = "<CR>",
      --     normal = "<CR>",
      --   }
      -- }
      providers = {
        ollama = {
          endpoint = "http://localhost:11434", -- your Ollama server URL
          model = "qwen2.5-coder:7b", -- specify your model here
          -- base_url = "http://localhost:11434", -- uncomment and set if using a custom URL
        },
        openai = {
          api_key_name = "OPENAI_API_KEY", -- ensure your API key is set in the environment
          model = "gpt-4o-mini", -- specify your model here
        },
      },
      config = function(_, opts)
        require("avante").setup(opts)
        -- Quick provider toggle commands (no guessing, just use these)
        local map = vim.keymap.set
        map("n", "<leader>apg", function()
          vim.g.avante_provider = "openai"
          vim.notify("Avante provider: openai (gpt-4o-mini)")
        end, { desc = "Avante: switch to GPT (OpenAI)" })

        map("n", "<leader>apo", function()
          vim.g.avante_provider = "ollama"
          vim.notify("Avante provider: ollama (qwen2.5-coder:7b)")
        end, { desc = "Avante: switch to Qwen (Ollama)" })
      end,
    },
  },
}
