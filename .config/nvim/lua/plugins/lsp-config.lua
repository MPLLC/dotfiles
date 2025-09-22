return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "denols",
          "clangd",
          "tailwindcss",
          "dockerls",
          "gopls",
          "html",
          "ts_ls",
          "jsonls",
          "marksman",
          "phpactor",
          "rust_analyzer",
          "svelte",
          "taplo",
          "twiggy_language_server",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.enable("lua", { capabilities = capabilities })
      vim.lsp.enable("denols", { capabilities = capabilities })
      vim.lsp.enable("clangd", { capabilities = capabilities })
      vim.lsp.enable("tailwindcss", { capabilities = capabilities })
      vim.lsp.enable("dockerls", { capabilities = capabilities })
      vim.lsp.enable("gopls", { capabilities = capabilities })
      vim.lsp.enable("html", { capabilities = capabilities })
      vim.lsp.enable("ts_ls", { capabilities = capabilities })
      vim.lsp.enable("jsonls", { capabilities = capabilities })
      vim.lsp.enable("marksman", { capabilities = capabilities })
      vim.lsp.enable("phpactor", { capabilities = capabilities })
      vim.lsp.enable("rust_analyzer", { capabilities = capabilities })
      vim.lsp.enable("svelte", { capabilities = capabilities })
      vim.lsp.enable("taplo", { capabilities = capabilities })
      vim.lsp.enable("twiggy_language_server", { capabilities = capabilities })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>def", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
