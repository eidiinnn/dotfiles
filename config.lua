lvim.plugins = {
  {
    "phaazon/hop.nvim",
    config = function()
      require("hop").setup({})
    end
  },
  "wiliamks/nice-reference.nvim",
}


lvim.keys.normal_mode["<Leader>i"] = ":HopChar2<CR>"
lvim.keys.normal_mode["<Leader>o"] = "<cmd>lua require('nice-reference').references()<CR>"

--local linters = require "lvim.lsp.null-ls.linters"
--linters.setup {
--   { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
-- }

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact" },
  },
}
