local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup {
  debug = false,
  sources = {
    formatting.prettier.with {
      extra_filetypes = { "toml" },
      extra_args = { "--bracket-same-line", "--no-semi", "--use-tabs" },
    },

    --lua
    formatting.stylua,
    diagnostics.luacheck,

    --C++
    formatting.astyle,
    diagnostics.clang_check,

    --python
    --sh
    --latex
  },
}
