vim.api.nvim_exec(
  [[
  augroup FormatWrite
    autocmd!
    autocmd BufWritePost * FormatWrite
  augroup END
  ]],
  false
)
