local keymap = vim.keymap

--
keymap.set('n', '<C-a>', 'gg<S-v>G')
keymap.set('n', 'te', ':tabedit<CR>')
keymap.set('n', 'sp', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

