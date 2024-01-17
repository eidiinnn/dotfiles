lvim.format_on_save = true
vim.cmd [[set noautochdir]]

lvim.plugins = {
  {
    "phaazon/hop.nvim",
    config = function()
      require("hop").setup({})
    end
  },
  "wiliamks/nice-reference.nvim",
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}

lvim.keys.normal_mode["f"] = ":HopChar1<CR>"
lvim.keys.normal_mode["<Leader>F"] = ":Telescope live_grep<CR>"
lvim.keys.normal_mode["<Leader>t"] = ":Telescope<CR>"
lvim.keys.normal_mode["<Leader>o"] = "<cmd>lua require('nice-reference').references()<CR>"
lvim.keys.insert_mode["<C-l>"] = "<ESC>"
lvim.keys.visual_mode["<C-l>"] = "<ESC>"

-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "eslint", filetypes = { "typescript", "typescriptreact", "vue" } }
-- }

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact", "vue" },
  },
}

lvim.builtin.telescope.defaults.file_ignore_patterns = {
  "node_modules/",
  "node_modules/*",
}

require 'nvim-treesitter.configs'.setup {
  indent = {
    enable = true
  },
  folding = {
    enable = true
  }
}

lvim.colorscheme = "catppuccin-macchiato"
