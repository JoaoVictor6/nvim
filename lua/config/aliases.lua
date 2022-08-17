local keymap = vim.keymap
-- quit/quit and save forced/ quit forced
keymap.set('n', 'q', ':quit<CR>')
keymap.set('n', '<A-s>', ':wq!<CR>')
keymap.set('n', '<C-A-w>', ':q!<CR>')

--increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

--deletando um palavra que esteja atrás do cursor
keymap.set('n', 'dw', 'vb"_d')

--select all
keymap.set('n', '<C-a>', 'gg<S-v>g')

-- New tab
keymap.set('n', 'te', ':tabedit<CR>')

-- telescope
keymap.set('n', ';f', ':Telescope find_files<CR>')
keymap.set('n', ';w', ':Telescope grep_string<CR>')
keymap.set('n', ';;', ':Telescope live_grep<CR>')

-- nvim-tree
keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>')
