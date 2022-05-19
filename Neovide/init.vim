" ukyang									-- Update Date: 2022年5月16日 15:57 周一
" ========================================================================================================================
" ================================================== BEGIN. ============================================================ 
set nocompatible					" be improved, required
set clipboard+=unnamedplus
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" Windows Need Modify Here
cd /mnt/f/git_space
" set guifont=FiraCode\ NF
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
" Plug 'ellisonleao/gruvbox.nvim'
" Plug 'catppuccin/nvim'

"  Plug 'itchyny/lightline.vim'
"	Plug 'scrooloose/nerdtree'
"  Plug 'mengelbrecht/lightline-bufferline'
  Plug 'akinsho/bufferline.nvim',{ 'tag': 'v2.*' }

" lsp
	Plug 'neovim/nvim-lspconfig'
	Plug 'williamboman/nvim-lsp-installer'

" nvim-tree
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'

" floaterm
  Plug 'voldikss/vim-floaterm'

" nvim-cmp
" Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
	
" Plug 'hrsh7th/cmp-vsnip'
" Plug 'hrsh7th/vim-vsnip'
" Plug 'rafamadriz/friendly-snippets'

" Plug 'onsails/lspkind-nvim'


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


" ==================== General  settings ===================
" ==================== END General settings ===================


" ==================== Colorscheme settings ===================
"let g:lightline = {
"     \ 'colorscheme': 'wombat',
"     \ 'active': {
"     \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
"     \ },
"     \ 'tabline': {
"     \   'left': [ ['buffers'] ],
"     \   'right': [ ['close'] ]
"     \ },
"     \ 'component_expand': {
"     \   'buffers': 'lightline#bufferline#buffers'
"     \ },
"     \ 'component_type': {
"     \   'buffers': 'tabsel'
"     \ }
"     \ }
"let g:lightline#bufferline#show_number = 2
"let g:lightline#bufferline#number_map = {
"\ 0: '⁰', 1: '¹', 2: '²', 3: '³', 4: '⁴',
"\ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'}
set showtabline=2

" For dark version
set background=dark
set termguicolors
" For light version
" set background=light
colorscheme zephyr
" ==================== END Colorscheme settings ===================


" ==================== Plugin settings ===================
" ==================== END Plugin settings ===================


" ==================== Autocmd/Function settings ===================
" ==================== END Autocmd/Function settings ===================


" ==================== External Lua settings ===================
lua require('basic')
lua require('keybindings')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
" ==================== END External Lua settings ===================


" ==================== External settings ===================
"
" ========== keymap settings here. ==========
" ========== autoheader settings here. ==========
" *.py & *.sh
" if filereadable($HOME . "/AppData/Local/nvim/shpy-autoheader.vim")
"     source $HOME/AppData/Local/nvim/shpy-autoheader.vim
" endif

" ========== other custom external settings here. ==========
" if filereadable($HOME . "/AppData/Local/nvim/custom.vim")
"     source $HOME/AppData/Local/nvim/custom.vim
" endif
" ==================== END External settings ===================


" ================================================== THE END. ============================================================ 
" ========================================================================================================================
