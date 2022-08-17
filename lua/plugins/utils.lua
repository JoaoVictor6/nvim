require('nvim-web-devicons').get_icons()
local nvim_tree = require("nvim-tree")
local tree_cb = require"nvim-tree.config".nvim_tree_callback

nvim_tree.setup()

require('staline').setup()
require('colorizer').setup()
require('telescope').setup({ 
  file_ignore_patterns = { 
    "./node_modules/*", 
    "node_modules", 
    "^node_modules/*", 
    "node_modules/*", 
    ".git/", 
    ".cache", 
    "%.o", 
    "%.a", 
    "%.out", 
    "%.class",
    "%.pdf", 
    "%.mkv", 
    "%.mp4", 
    "%.zip"
  },
})

--auto pair
require('nvim-autopairs').setup({
  enable_check_bracket_line = false
})

-- PARA AS LINHAS DE INDENTAÇÃO
vim.opt.listchars:append("space:⋅")
--vim.opt.listchars:append("eol:↴")
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.cmd([[
  hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=NONE guifg=#FFFFFF
  let g:indentLine_fileTypeExclude = ['dashboard']
]])


require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
