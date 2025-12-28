return {
  -- Catppuccin theme configuration
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true, -- disables setting the background color
      show_end_of_buffer = false,
      term_colors = true,
      dim_inactive = {
        enabled = false,
      },
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        neotree = true,
        treesitter = true,
        mason = true,
        noice = true,
        notify = true,
        which_key = true,
        mini = {
          enabled = true,
        },
      },
      custom_highlights = function(colors)
        return {
          -- Make main background transparent
          Normal = { bg = "NONE" },
          NormalNC = { bg = "NONE" },
          -- Make neo-tree background transparent
          NeoTreeNormal = { bg = "NONE" },
          NeoTreeNormalNC = { bg = "NONE" },
          NeoTreeEndOfBuffer = { bg = "NONE" },
          -- Make other floating windows transparent
          NormalFloat = { bg = "NONE" },
          FloatBorder = { bg = "NONE" },
          -- Make telescope transparent
          TelescopeNormal = { bg = "NONE" },
          TelescopeBorder = { bg = "NONE" },
          -- Make statusline/tabline transparent
          StatusLine = { bg = "NONE" },
          TabLine = { bg = "NONE" },
          TabLineFill = { bg = "NONE" },
        }
      end,
    },
  },

  -- Configure LazyVim to load catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
