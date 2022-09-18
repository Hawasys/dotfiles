local overrides = require "custom.plugins.overrides"
return {
  ["lervag/vimtex"] = {
    ft = { "tex" },
  },
  ["tpope/vim-fugitive"] = {},
  ["tpope/vim-eunuch"] = {},
  ["rust-lang/rust.vim"] = {},
  ["simrat39/rust-tools.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      local rt = require "rust-tools"
      rt.setup {
        server = {
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<Leader>dh", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>dc", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        },
      }
    end,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["mfussenegger/nvim-dap"] = {},
  ["rcarriga/nvim-dap-ui"] = {
    config = function()
      require "custom.plugins.dap-ui"
    end,
  },
  -- ["nvim-telescope/telescope-dap.nvim"] = {
  -- },
  -- ["theHamsta/nvim-dap-virtual-text"] = {}
  ["folke/which-key.nvim"] = {
    disable = false,
  },
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  ["NvChad/ui"] = {
    override_options = overrides.ui,
  },
  ["lukas-reineke/indent-blankline.nvim"] = {
    override_options = overrides.indent_blankline,
  },
}
