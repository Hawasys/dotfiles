-- example file i.e lua/custom/init.lua
-- load your globals, autocmds here or anything .__.

-- opts --.
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.list = true
vim.opt.relativenumber = true

vim.g.rustfmt_autosave = 1

-- variables --.
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_compiler_method = "latexmk"

-- autocmds --.
vim.cmd [[autocmd StdinReadPre * let s:std_in=1]]
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
vim.cmd [[autocmd Filetype lua setlocal tabstop=2 shiftwidth=2]]
