return {
  -- add dracula
--  { "Mofiqul/dracula.nvim" },

    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('nordic').load()
        end
    },


  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordic",
--    colorscheme = "dracula"
    },
  },
}


--catpuccin
-- return {
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catpuccin",
--     },
--   },
-- }
