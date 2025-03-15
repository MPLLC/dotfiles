return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        section_separators = { left = "", right = "" },
        component_separators = { left = "\\", right = "/" },
      },
      tabline = {
        lualine_a = {
          {
            "filetype",
            icon_only = true,
            colored = true,
            padding = { left = 1, right = 0 },
            separator = "",
          },
          {
            "filename",
            padding = { left = 0, right = 1 },
          },
          "branch",
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "tabs" },
      },
      extensions = { "neo-tree" },
    })
  end,
}
