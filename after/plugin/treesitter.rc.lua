require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'html',
    'css',
    'scss',
    'javascript',
    'tsx'
  },
  highlight = {
    enable = true
  },
  autotag = {
    enable = true
  },
  indent = {
    enable = true
  }
})
