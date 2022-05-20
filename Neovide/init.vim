" Copyright (C)2022 By ukyang. All Rights Reserved.
" Author: ukyang
" E-mail: ukyang_ma@163.com
" Date: 2022-05-20
" Description:


set clipboard+=unnamedplus
autocmd BufWritePost $MYVIMRC source $MYVIMRC


" Windows Need Modify Here
cd /mnt/f/git_space
" set guifont=FiraCode\ NF:h12
" cd F:\git_space


" ==================== Plugin packages ====================
" Begin Plug, Depends On https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/plugged')
" ========== colorscheme here. ==========
" Plug 'joshdick/onedark.vim'
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'EdenEast/nightfox.nvim'
" Plug 'morhetz/gruvbox'
" Plug 'sainnhe/gruvbox-material'
  Plug 'glepnir/zephyr-nvim'
  Plug 'kyazdani42/nvim-web-devicons'
" Plug 'ellisonleao/gruvbox.nvim'
" Plug 'catppuccin/nvim'

"  Plug 'itchyny/lightline.vim'
"	Plug 'scrooloose/nerdtree'
"  Plug 'mengelbrecht/lightline-bufferline'

"  bufferline
  Plug 'akinsho/bufferline.nvim',{ 'tag': 'v2.*' }

" lsp
	Plug 'neovim/nvim-lspconfig'
	Plug 'williamboman/nvim-lsp-installer'

" nvim-tree
  Plug 'kyazdani42/nvim-tree.lua'

" floaterm
  Plug 'voldikss/vim-floaterm'

" lualine
  Plug 'nvim-lualine/lualine.nvim'

" nvim-cmp
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'

" Snippet engine: vsnip
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'rafamadriz/friendly-snippets'

" lspkind
  Plug 'onsails/lspkind-nvim'


" ========== appearence here. ==========
" ========== useful tools here. ==========
" ========== programming tools here. ==========

call plug#end()
" ==================== END Plugin packages ====================


" ==================== Pre settings ===================
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
"if (empty($TMUX))
"   if (has("nvim"))
"       "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"       let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"   endif
"   "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"   "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
"   " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"   if (has("termguicolors"))
"       set termguicolors
"   endif
"endif
" =================== END Pre settings ===================


" ==================== Colorscheme settings ===================
set showtabline=2

" For dark version
set background=dark
set termguicolors
" For light version
" set background=light
colorscheme zephyr
" ==================== END Colorscheme settings ===================


" ==================== External Lua settings ===================
lua require('basic')
lua require('keybindings')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/lualine')
lua require('lsp/lsp')
lua require('lsp/nvim-cmp')
" ==================== END External Lua settings ===================


" ==================== External settings ===================
source ~/.config/nvim/vim_raw/shpy-autoheader.vim
" ==================== END External settings ===================


" ================================================== THE END. ============================================================ 
" ========================================================================================================================
