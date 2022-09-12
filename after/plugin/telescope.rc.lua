require('telescope').setup({
  defaults = {
    mappings = {},
  },
  pickers = {},
  extensions = {
    file_browser = {
      theme = 'dropdown',
      hijack_netrw = true,
      mappings = {},
      path = '%:p:h',
      hidden = true,
      initial_mode = 'normal',
      previewer = false
    }
  }
})

require('telescope').load_extension 'file_browser'

vim.api.nvim_set_keymap(
  'n',
  'fb',
  ':Telescope file_browser<CR>',
  { noremap = true }
)
