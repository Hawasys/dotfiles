-- lua/custom/mappings
local M = {}

M.vimtex = {
  n = {
    ["<leader>lc"] = { "<cmd> VimtexCompile <CR>", "compile latex" },
  },
}
M.Dap = {
  n = {
    ["<F5>"] = { "<cmd> lua require'dap'.continue()<CR>", "continue dap" },
  },
}

return M
