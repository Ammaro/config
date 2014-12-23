
filetype off
execute pathogen#infect()
call pathogen#helptags()

set foldmethod=indent
set foldlevel=99

syntax on
filetype on
filetype plugin indent on
set nu
set ruler

" indenting and tabs
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 column
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

" mapping to commands
map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
nmap <leader>a <ESC>:Ack!
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>


" status line 

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{fugitive#statusline()}
set statusline+=%*
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5

" tab completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"runtime 
set runtimepath^=~/.vim/bundle/node
