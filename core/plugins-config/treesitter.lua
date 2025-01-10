return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "cmake", "dart", "go", "gomod", "gosum", "gitignore", "typescript", "svelte", "css"},
        sync_install = false,
        highlight = { 
          enable = true,
          additional_vim_regex_highlighting = false,
      },
        indent = { enable = true },  
      })
  end
}
