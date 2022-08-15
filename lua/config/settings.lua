print("Olá, usuário!")

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd([[ let extension = expand('%:e') ]])

vim.opt.termguicolors = true

vim.cmd [[
  set termguicolors
  set shiftwidth=2
  set number
  set encoding=utf8
  set title
  set confirm
  set incsearch
  set autoindent
  set wildmenu
  set laststatus=2
  set t_Co=256
  set softtabstop=2
  set mouse=a
  syntax on
  set cursorline
]]

