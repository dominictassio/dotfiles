"
" Variables
"

let laststatus = 2
let g:bufferline_echo = 0
let base16colorspace = 256
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
let g:loaded_python_provider = 1
let g:loaded_python3_provider = 1
let g:python_host_skip_check = 1
let g:python3_host_skip_check = 1


"
" Settings
"

set background=dark
set updatetime=250
set number

" 
" MISC
"


"
" Plugins
"

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
call plug#end()


"
" Plugin variables
"

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" syntastic
let g:syntastic_always_populate_loc_list = 2
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:EditorConfig_exec_path = '/usr/bin/editorconfig'


"
" Plugin settings
"

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" 
" Plugin mappings
"

map <C-n> :NERDTreeToggle<CR>



"
" MISC
"

colorscheme base16-default

autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

