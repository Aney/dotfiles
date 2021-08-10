" Originally based on https://medium.com/better-programming/setting-up-neovim-for-web-development-in-2020-d800de3efacd
" Neovim plugins and setting
" Considerations, etc. COC: coc-emmet
" vim-fugitive, vim-gitgutter, vim-surround 

call plug#begin("~/.vim/plugged")
	" Plugin Section
	" Colour Scheme
	Plug 'morhetz/gruvbox'
	" File Explorer
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	" Fuzzy Finder
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	" COC
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-phpls']
	" If node is installed via nvm, you need to reference a version here
	let g:coc_node_path = '/home/nathan/.nvm/versions/node/v14.17.4/bin/node'
	" Vim Move
	Plug 'matze/vim-move'
	" Add surround to vim (much like, around, inside, etc)
	Plug 'tpope/vim-surround'
	" Add easy commenting
	Plug 'preservim/nerdcommenter'
	" Symfony/PHP
	Plug 'lepture/vim-jinja'
	Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
call plug#end()

" Add Vim Config
source ~/.vimrc

" Config Section

" Colour Scheme
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme gruvbox 

" File Explorer
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle File Explorer <C-b>
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" CoC
inoremap <silent><expr> <c-space> coc#refresh()

" Fuzzy Finder <C-p>
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Vim Move
let g:move_key_modifier = 'C'

