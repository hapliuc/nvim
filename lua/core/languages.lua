-- PYTHON OPTIONS
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
  end,
})

-- PHP OPTIONS
vim.api.nvim_create_autocmd("FileType", {
  pattern = "php",
  callback = function()
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
  end,
})

-- MARKDOWN OPTIONS
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
  end,
})

