return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>to", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" }
    }
  },
  jit.os == "OSX" and {
    "cormacrelf/dark-notify",
    event = "ColorScheme",
    config = function()
      require("dark_notify").run {
        schemes = {
          light = "rose-pine-dawn",
          dark = "rose-pine-main",
        },
      }
    end,
  },
}
