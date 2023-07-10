lvim.plugins = {
  {
    "phaazon/hop.nvim",
    config = function()
      require("hop").setup({})
    end
  },
}

lvim.keys.normal_mode["<Leader>i"] = ":HopChar2<CR>"
