-- ~/.config/nvim/lua/plugins/bufferline.lua

return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        numbers = "none", -- "ordinal", "buffer_id", "both"
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
    })
  end,
}
