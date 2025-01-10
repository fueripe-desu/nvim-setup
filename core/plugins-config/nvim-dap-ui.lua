return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
    "folke/neodev.nvim",
    "theHamsta/nvim-dap-virtual-text",
  },
  config = function()
    require("neodev").setup({
      library = { plugins = { "nvim-dap-ui" }, types = true },
    })

    require("nvim-dap-virtual-text").setup()
  end
}

