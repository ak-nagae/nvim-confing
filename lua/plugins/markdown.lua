return {
  -- Markdownのlinterとフォーマッターを無効化
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      -- markdownlintを明示的に無効化（何も追加しない）
    end,
  },

  -- conform.nvimのmarkdownlint設定を調整
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        markdown = {}, -- markdownのフォーマッターを無効化
      },
    },
  },

  -- nvim-lintでmarkdownのlinterを無効化
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = function(_, opts)
      opts.linters_by_ft = opts.linters_by_ft or {}
      opts.linters_by_ft.markdown = {} -- markdownのlinterを無効化
    end,
  },

  -- Markdown LSP (marksman)の診断を抑制
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {
          handlers = {
            -- 診断メッセージを表示しない
            ["textDocument/publishDiagnostics"] = function() end,
          },
        },
      },
    },
  },
}
