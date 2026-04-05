return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    -- lazy-load on key press
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Toggle File Tree" },
    },

    config = function()
      require("nvim-tree").setup({
        sort = {
          sorter = "case_sensitive",
        },

        view = {
          width = 30,
          side = "left",
        },

        renderer = {
          group_empty = true,

          icons = {
            show = {
              git = true,
              file = false,
              folder = false,
              folder_arrow = true,
            },

            glyphs = {
              folder = {
                arrow_closed = "⏵",
                arrow_open = "⏷",
              },

              git = {
                unstaged  = "✗",
                staged    = "✓",
                unmerged  = "⌥",
                renamed   = "➜",
                untracked = "★",
                deleted   = "⊖",
                ignored   = "◌",
              },
            },
          },
        },

        filters = {
          dotfiles = true,
        },

        git = {
          enable = true,
        },

        actions = {
          open_file = {
            quit_on_open = false,
          },
        },
      })
    end,
  },
}
