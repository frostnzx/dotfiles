return {
    {
        "folke/tokyonight.nvim",
        enabled = false,
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
          require("tokyonight").setup({
            transparent = true,
            styles = {
              sidebars = "transparent",
              floats = "transparent",
            }
          })
          vim.cmd[[colorscheme tokyonight-night]]
        end,
    },
    {
        "Mofiqul/vscode.nvim",
        enabled = false,
        lazy = false,           -- loads immediately (optional)
        priority = 1000,        -- ensure it’s loaded early
        config = function()
          -- setup options (all optional)
          require("vscode").setup({
            -- transparent background
            transparent = true,
            -- italic comments
            italic_comments = true,
            -- optionally override colors etc
          })

          vim.o.background = "light"
          -- load the colorscheme
          vim.cmd([[colorscheme vscode]])
        end,
    },
    {
      "ellisonleao/gruvbox.nvim",
      lazy = false,
      priority = 1000,
      enabled = true,
      config = function()
        -- required
        vim.o.termguicolors = true
 --       vim.o.background = "light" -- 👈 LIGHT MODE

        require("gruvbox").setup({
          contrast = "hard",          -- best readability for light
          transparent_mode = true,  -- keep background (important)
        })

        vim.cmd("colorscheme gruvbox")
      end,
    },
}

