" Vim settings
set tabstop =4		" The amount of spaces per tab
set shiftwidth =4 	" The amount of spaces when shifting >> <<
syntax on 			" Syntax highlighting
set number			" Line numbers
set relativenumber	" Relative lines numbers (also)
set cursorline		" Shows a line on the cursor's line

" Stop automatic comments on carriage
"set formatoptions-=cro
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Search settings
set incsearch		" Search as characters are entered
set hlsearch		" Highlight all matches

" Changes colorcolumn per line that hits 81 characters
call matchadd('ColorColumn', '\%81v', 100)

" Fuzzy finder
set path+=**		" Search down subdirectories
set wildmenu		" Display all the matching files when tab completing

