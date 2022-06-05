" Copyright (C)2022 By ukyang. All Rights Reserved.
" Author: ukyang
" E-mail: ukyang_ma@163.com
" Date: 2022-06-05
" Description:

" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" Windows Need Modify Here
" cd /mnt/f/git_space
" cd ~/ukyang-vimrelated-Windows
" set guifont=FiraCode\ NF:h12
" cd F:\git_space


" ==================== Plugin packages ====================
" Begin Plug, Depends On https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/plugged')

" 中文文档
Plug 'yianwillis/vimcdoc'


" colorscheme
Plug 'catppuccin/nvim', {'as': 'catppuccin'}


" icons
Plug 'kyazdani42/nvim-web-devicons'
" 一款lua开发使用的插件
Plug 'nvim-lua/plenary.nvim'
" 文件查找
Plug 'sharkdp/fd'
" 文字查找
Plug 'BurntSushi/ripgrep'


" windline
Plug 'windwp/windline.nvim'
" gitsigns
Plug 'lewis6991/gitsigns.nvim'
" nvim-tree
Plug 'kyazdani42/nvim-tree.lua'
" hlslens
Plug 'kevinhwang91/nvim-hlslens'
" indent-blankline
Plug 'lukas-reineke/indent-blankline.nvim'
" autopairs
Plug 'windwp/nvim-autopairs'
" switch
Plug 'AndrewRadev/switch.vim'
" hop
Plug 'phaazon/hop.nvim'
" surround
Plug 'ur4ltz/surround.nvim'
" illuminate
Plug 'RRethy/vim-illuminate'
" spellsitter
Plug 'lewis6991/spellsitter.nvim'
" autosave
Plug 'Pocco81/AutoSave.nvim'
" lastplace
Plug 'ethanholz/nvim-lastplace'
" auto-session
Plug 'rmagatti/auto-session'
" spectre
Plug 'nvim-pack/nvim-spectre'
" vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'
" scrollbar
Plug 'petertriho/nvim-scrollbar'
" colorizer
Plug 'norcalli/nvim-colorizer.lua'
" toggleterm
Plug 'akinsho/toggleterm.nvim'
" undotree
Plug 'mbbill/undotree'
" which-key
Plug 'folke/which-key.nvim'
" telescope
Plug 'nvim-telescope/telescope.nvim'
" notify
Plug 'rcarriga/nvim-notify'
" todo-comments
Plug 'folke/todo-comments.nvim'
" translation
Plug 'ukyangsir/Terslation'
Plug 'SpringHan/Terslation.vim'
" comment
Plug 'numToStr/Comment.nvim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'


" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
" lspsaga
Plug 'tami5/lspsaga.nvim'
" fidget
Plug 'j-hui/fidget.nvim'
" lsp_signature
Plug 'ray-x/lsp_signature.nvim'
" lightbulb
Plug 'kosayoda/nvim-lightbulb'


" nvim-cmp
" Snippet engini: vsnip
Plug 'hrsh7th/nvim-cmp' " 代码补全核心插件，下面都是增强补全体验的插件
Plug 'onsails/lspkind-nvim' " 为补全添加类似vscode的图标
Plug 'hrsh7th/vim-vsnip' " vsnip补全引擎，用于获得代码片段支持，选择它的原因是，可以直接调用vscode下的代码片段
Plug 'hrsh7th/cmp-vsnip' " 适用于vsnip的代码片段源
Plug 'hrsh7th/cmp-nvim-lsp'  " 替换内置omnifunc，获得更多补全
Plug 'hrsh7th/cmp-buffer' " 缓冲区补全
Plug 'hrsh7th/cmp-path' " 路径补全
Plug 'hrsh7th/cmp-cmdline' " 命令补全
Plug 'f3fora/cmp-spell' " 拼写建议
Plug 'rafamadriz/friendly-snippets' " 提供多种语言的代码片段
Plug 'lukas-reineke/cmp-under-comparator' " 让补全结果的排序更加智能
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' } " tabnine源，提供基于AI的智能补全


" treesitter
" Plug 'nvim-treesitter/nvim-treesitter',{'do': ':TSUpdate'}
" Plug 'p00f/nvim-ts-rainbow' " 彩虹括号

" code format
Plug 'sbdchd/neoformat'

" bufferline
" Plug 'akinsho/bufferline.nvim',{ 'tag': 'v2.*' }
" floaterm
" Plug 'voldikss/vim-floaterm'

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
let g:catppuccin_flavour = "macchiato"
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

" hop
highlight HopUnmatched guifg=none guibg=none

" which-key
highlight WhichKeyFloat guibg=none

" lsp
highlight DiagnosticInfo guibg=none
highlight DiagnosticWarn guibg=none
highlight DiagnosticError guibg=none
highlight DiagnosticHint guibg=none

" lsp_signature
highlight NormalFloat guibg=none
highlight Normal guibg=none
" highlight FloatBorder guifg=none

" marks
" highlight SignColumn guibg=none ctermbg=none

" Neovide
let g:neovide_fullscreen=v:true
let g:neovide_transparency=0.8

" ==================== External settings ===================
source ~/.config/nvim/vim_raw/autoheader.vim
source ~/.config/nvim/vim_raw/terslation.vim
" source ~/ukyang-vimrelated-Windows/Neovide/vim_raw/floaterm.vim
" ==================== END External settings ===================
