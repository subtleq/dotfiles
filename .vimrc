colorscheme twilight   " set the color scheme
set guifont=Consolas   " set the font to consolas
set backspace=indent,eol,start " backspace wraps around lines
set whichwrap+=<,>,[,] " enable line wraps with left and right arrows
set colorcolumn=81     " turn on a column at 81 characters
set showtabline=2      " turn on tab bar
set autoindent         " autoindent as needed
set tabstop=2          " tabs are displayed as 2 spaces
set shiftwidth=2       " auto indent 2 spaces
set expandtab          " tabs are turned into spaces
set number             " turn on line numbers
set numberwidth=4      " use 4 spaces for the line numbers
set nobackup           " turn off tilde files (file.txt~)
set noswapfile         " turn off swap files (file.txt.swp)
syntax on              " always on syntax highlighting

" autoclose {, /*, and /**
inoremap {<CR> {<CR><CR>}<UP><TAB>
inoremap /*<CR> /*<CR><CR><BACKSPACE>/<UP><SPACE>
inoremap /**<CR> /**<CR><CR><BACKSPACE>/<UP><SPACE>

" remove all trailing whitespace
nnoremap <silent> <F9> :%s/\s\+$<CR>

" unhilight search term
nnoremap <silent> <F12> :noh<CR>

" Move tabs with alt + left|right
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>
