return {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("go").setup()
    local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.go",
      callback = function()
      require('go.format').goimports()
      end,
      group = format_sync_grp,
    })

    vim.keymap.set("n", "<leader>t", ":GoTest<CR>")
    vim.keymap.set("n", "<leader>d", ":GoDebug<CR>")
    vim.keymap.set("n", "<leader>ds", ":GoDebug -s<CR>")
    vim.keymap.set("n", "<leader>db", ":GoBreakToggle<CR>")
  end,
  event = {"CmdlineEnter"},
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}
