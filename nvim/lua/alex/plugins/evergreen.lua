return {
  {
    'sainnhe/everforest',
    config = function()
      -- Set the colorscheme to Everforest
      vim.cmd("colorscheme everforest")

      -- Optional: Adjust highlight groups or other settings if needed
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })  -- Set transparent background for normal mode
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })  -- For floating windows
    end,
    lazy = false,  -- Ensure the plugin is loaded immediately
  },
}

