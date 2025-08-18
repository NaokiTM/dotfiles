return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordic",
    },
    -- disable Catppuccin that LazyVim might pull in
    enabled = true,
    dependencies = function()
      -- filter out catppuccin if LazyVim lists it
      return vim.tbl_filter(function(p)
        return p[1] ~= "catppuccin/nvim"
      end, require("lazy.core.config").plugins)
    end
  },

  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('nordic').load()
    end
  },
}
