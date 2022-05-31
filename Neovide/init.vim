" Copyright (C)2022 By ukyang. All Rights Reserved.
" Author: ukyang
" E-mail: ukyang_ma@163.com
" Date: 2022-05-30
" Description:


" autocmd BufWritePost $MYVIMRC source $MYVIMRC


" Windows Need Modify Here
" cd /mnt/f/git_space
cd ~/ukyang-vimrelated-Windows
" set guifont=FiraCode\ NF:h12
" cd F:\git_space


" ==================== Plugin packages ====================
" Begin Plug, Depends On https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/plugged')
" 中文文档
Plug 'yianwillis/vimcdoc'

" colorscheme
" Plug 'joshdick/onedark.vim'
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'EdenEast/nightfox.nvim'
" Plug 'morhetz/gruvbox'
" Plug 'sainnhe/gruvbox-material'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
" Plug 'ellisonleao/gruvbox.nvim'
" Plug 'catppuccin/nvim'
" Plug 'rebelot/kanagawa.nvim'
" Plug 'phanviet/vim-monokai-pro'
" Plug 'glepnir/zephyr-nvim'

" icons
Plug 'kyazdani42/nvim-web-devicons'

" 一款lua开发使用的插件
Plug 'nvim-lua/plenary.nvim'

" bufferline
" Plug 'akinsho/bufferline.nvim',{ 'tag': 'v2.*' }

" windline
Plug 'windwp/windline.nvim'

" gitsigns
Plug 'lewis6991/gitsigns.nvim'

" nvim-tree
Plug 'kyazdani42/nvim-tree.lua'

" floaterm
Plug 'voldikss/vim-floaterm'

" hlslens
Plug 'kevinhwang91/nvim-hlslens'

" indent-blankline
Plug 'lukas-reineke/indent-blankline.nvim'

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" lspkind
Plug 'onsails/lspkind-nvim'

" lspsaga
Plug 'tami5/lspsaga.nvim'

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

" translation
Plug 'ukyangsir/Terslation'
Plug 'SpringHan/Terslation.vim'

" autosave
" Plug 'Pocco81/AutoSave.nvim'

" telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'sharkdp/fd' "文件查找
Plug 'BurntSushi/ripgrep' "文字查找

" treesitter
" Plug 'nvim-treesitter/nvim-treesitter',{'do': ':TSUpdate'}
" Plug 'p00f/nvim-ts-rainbow' " 彩虹括号

" comment
Plug 'numToStr/Comment.nvim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

" todo-comments
Plug 'folke/todo-comments.nvim'

" code format
Plug 'sbdchd/neoformat'

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




" ==================== External Lua settings ===================
lua require('basic')
" ==================== END External Lua settings ===================

" ==================== Colorscheme settings ===================
" colorscheme zephyr
let g:catppuccin_flavour = "mocha"
colorscheme catppuccin
" lspsaga
" highlight link LspSagaFinderSelection guifg='#ff0000' guibg='#00ff00' gui='bold'
" ==================== END Colorscheme settings ===================

" transparency
" highlight Normal guibg=none ctermbg=none
" highlight NvimTreeNormal guibg=none ctermbg=none

" cursor（fail）
highlight Cursor guifg=#1f1f1f guibg=#98C379

" linenumber
highlight LineNr guifg=#696969
highlight CursorLineNr guifg=White ctermfg=White
highlight CursorLine cterm=none ctermbg=none guibg=none

" comment
highlight comment guifg=#808080

" nvim-tree
highlight NvimTreeFolderIcon guifg=#84ffff
highlight NvimTreeFolderName guifg=#808080
highlight NvimTreeOpenedFolderName guifg=#40E0D0
highlight NvimTreeRootFolder guifg=#40E0D0
highlight NvimTreeWinSeparator guifg=Black

" marks
" highlight SignColumn guibg=none ctermbg=none

" Neovide
let g:neovide_fullscreen=v:true
let g:neovide_transparency=0.8

" ==================== External settings ===================
source ~/ukyang-vimrelated-Windows/Neovide/vim_raw/autoheader.vim
source ~/ukyang-vimrelated-Windows/Neovide/vim_raw/terslation.vim
source ~/ukyang-vimrelated-Windows/Neovide/vim_raw/floaterm.vim
" ==================== END External settings ===================
