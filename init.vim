call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'

" vim-airline, the lean mean statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" autocompletion for vim
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
Plug 'dense-analysis/ale'
" Autocomplete
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-jedi'
Plug 'taketwo/vim-ros'

" Formatting
Plug 'Chiel92/vim-autoformat'

" Syntax/indent etc.
Plug 'sheerun/vim-polyglot'

" Theme
Plug 'kristijanhusak/vim-hybrid-material'

" Forget trailing spaces
Plug 'ntpeters/vim-better-whitespace'

" linting for like all the languages
" Plug 'scrooloose/syntastic'

" Quoting/paranthesizing made simple
Plug 'tpope/vim-surround'

" Commenting things
Plug 'tpope/vim-commentary'

" Enhanced cpp highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Indentation guide
Plug 'yggdroot/indentline'

" NERD tree: a tree explorer
Plug 'scrooloose/nerdtree'

" Detects indent settings on a file by file basis
Plug 'ciaranm/detectindent'

" Git diffs in gutter
Plug 'airblade/vim-gitgutter'

" Colored braces
Plug 'kien/rainbow_parentheses.vim'

" I need that color
Plug 'flazz/vim-colorschemes'

" Need them themes
Plug 'mhartington/oceanic-next'

" Them easy-motion
Plug 'easymotion/vim-easymotion'

" Better indented pasting
Plug 'sickill/vim-pasta'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

" Autopairing brackets and stuff
Plug 'jiangmiao/auto-pairs'

" I'm smooth as fuck boi
Plug 'yuttie/comfortable-motion.vim'

" Repeat stuff
Plug 'tpope/vim-repeat'

" Icons
Plug 'ryanoasis/vim-devicons'

" To avoid jk mappings
Plug 'zhou13/vim-easyescape'

call plug#end()
let g:deoplete#enable_at_startup = 1

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Syntastic recommended settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" " Syntastic custom settings
" let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Sets motion leader as <Leader> instead of <Leader><Leader>
map <Leader> <Plug>(easymotion-prefix)
map <Space> <Leader>
map f <Plug>(easymotion-bd-w)
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys='SADFJKLEWCMPGH'
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1

set background=dark
set termguicolors
let g:quantum_black=1
let g:quantum_italics=1
colorscheme quantum

syntax on
  let g:oceanic_next_terminal_bold = 1
  let g:oceanic_next_terminal_italic = 1

"hi Normal ctermbg=0 ctermfg=white guifg=white guibg=#000B1E
"hi LineNr ctermbg=8 ctermfg=0 guifg=#000B1E guibg=#123A75
"hi Visual ctermbg=8 guibg=#123A75
"hi ErrorMsg ctermbg=0 guibg=#000B1E

set mouse=a
set number
set clipboard=unnamedplus

nmap < <C-w><
nmap > <C-w>>
nmap - <C-w>-
nmap + <C-w>+
nmap = <C-w>=

"imap jk <Esc>`^
"imap kj <Esc>`^

nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
noremap 0 g0
noremap $ g$

" Copy to clipboard
vnoremap y "+y
nnoremap Y "+yg_
nnoremap y "+y
nnoremap yy "+yy

" Paste from clipboard
nnoremap P "+p
nnoremap p "+P
vnoremap P "+p
vnoremap p "+P

" This remaps arrow keys to switch between windows
nmap <silent> <Up> :wincmd k<CR>
nmap <silent> <Down> :wincmd j<CR>
nmap <silent> <Left> :wincmd h<CR>
nmap <silent> <Right> :wincmd l<CR>

tnoremap <Esc> <C-\><C-n>

set tildeop

au BufWinEnter * :DetectIndent
let g:airline_powerline_fonts = 1
let g:airline_theme="quantum"

" path to directory where library can be found
 let g:clang_library_path='/usr/lib/libclang.so.7'

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

set incsearch

let g:indentLine_enabled = 1

" Yes, the space exists
:set list lcs=tab:\¦\ 

" augroup NCM2
"   autocmd!
"   " enable ncm2 for all buffers
"   autocmd BufEnter * call ncm2#enable_for_buffer()
"   " :help Ncm2PopupOpen for more information
"   set completeopt=noinsert,menuone,noselect
"   " When the <Enter> key is pressed while the popup menu is visible, it only
"   " hides the menu. Use this mapping to close the menu and also start a new line.
"   " inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
"   " uncomment this block if you use vimtex for LaTex
"   " autocmd Filetype tex call ncm2#register_source({
"   "           \ 'name': 'vimtex',
"   "           \ 'priority': 8,
"   "           \ 'scope': ['tex'],
"   "           \ 'mark': 'tex',
"   "           \ 'word_pattern': '\w+',
"   "           \ 'complete_pattern': g:vimtex#re#ncm2,
"   "           \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
"   "           \ })
" augroup END

let g:ros_build_system = 'catkin'
let g:ros_catkin_make_options = '-j7 -DCMAKE_BUILD_TYPE=RelWithDebInfo'

set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab

" For relative number stuff
set relativenumber

" To replace stuff globally
set gdefault

" Coz redo should be U
nnoremap U <C-r>

" To break long lines
set breakindent
set breakindentopt=shift:2
set showbreak=↳

" Autocomplete stuff
" inoremap ( ()<Left>
" inoremap { {}<Left>
" inoremap [ []<Left>
" inoremap \" \""<Left>
" inoremap ' ''<Left>
" inoremap <lt> <lt>><Left>
" inoremap ''' ''''''<Left><Left><Left>

" inoremap () ()<Left>
" inoremap {} {}<Left>
" inoremap [] []<Left>
" inoremap \"" \""<Left>
" inoremap '' ''<Left>
" inoremap <lt>> <lt>><Left>

" inoremap (<CR> (<CR>)<C-c>O
" inoremap {<CR> {<CR>}<C-c>O
" inoremap [<CR> [<CR>]<C-c>O
" inoremap \"<CR> \"<CR>"<C-c>O
" inoremap '<CR> '<CR>'<C-c>O
" inoremap <lt><CR> <<CR>><C-c>O

" Leading space characters
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

" ignores cases for search
set ignorecase

" Opens files in buffer in a menu with Space + Tab
set wildcharm=<Tab>
nnoremap <Leader><Tab> :buffer<Space><Tab>

" To execute a macro over visual line selections
xnoremap Q :'<,'>:normal @q<CR>

" Set undodir
set undofile
set undodir=/tmp/nvim_undo_history

" Window size specific settings for easy-motion
let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 1  " Feel free to increase/decrease this value.
nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)<CR>

" Ale
let g:ale_lint_on_buffer_change = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8', 'pylint'], 'cpp':['clang']}
let g:ale_python_flake8_options = '--ignore=E1,E23,W503'
let g:ale_fixers = {'python': ['yapf']}
"let g:ale_python_pylint_options = '--rcfile /home/utkarsh/.pylintrc'

let g:lightline#bufferline#enable_devicons = 1

let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 200
cnoremap jk <ESC>
cnoremap kj <ESC>
