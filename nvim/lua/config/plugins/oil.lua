return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "-", function() require("oil").open_float() end, desc = "Open parent directory" },
  },
  opts = {
    default_file_explorer = false,
    view_options = { show_hidden = true },
    columns = { "icon" },
    keymaps = {
      ["<Esc>"] = "actions.close",
      ["q"] = "actions.close",
    },
  },
}

