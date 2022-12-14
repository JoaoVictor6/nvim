require('nvim-web-devicons').get_icons()
local nvim_tree = require("nvim-tree")
local tree_cb = require"nvim-tree.config".nvim_tree_callback

nvim_tree.setup({
  update_focused_file = {
    enable = true
  }
})

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
    "%.zip",
    "%-lock.json",
    "yarn.lock"
  },
})

--auto pair
require('nvim-autopairs').setup({
  enable_check_bracket_line = false
})

--comentarios
require('nvim_comment').setup()

-- tree sitter
require'nvim-treesitter.configs'.setup({
  ensure_installed = {'javascript', 'typescript', 'tsx', 'html', 'css', 'lua'},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  }
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

vim.cmd(
  [[
    let g:neoformat_try_node_exe = 1
    let g:neoformat_enabled_javascript = ['prettier', 'eslint_d', 'prettier-eslint']
    let g:neoformat_enabled_typescript = ['tslint']
  ]]
)


--https://www.reddit.com/r/neovim/comments/vraejn/comment/ievfele/?utm_source=share&utm_medium=web2x&context=3
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  callback = function()
    vim.cmd("EslintFixAll")
    vim.cmd("Neoformat prettier")
  end,
  group = autogroup_eslint_lsp,
})

