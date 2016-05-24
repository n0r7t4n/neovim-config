" My plugins start here
call plug#begin('~/.vim/plugged')

" Tabs to spaces and back again
Plug 'rhlobo/vim-super-retab'
" Some good mappings
Plug 'tpope/vim-unimpaired'

" vim-airline, the lean mean statusline
Plug 'bling/vim-airline'

" Code completion
Plug 'valloric/youcompleteme'

" Vim motions on speed
Plug 'easymotion/vim-easymotion'

" Quoting/paranthesizing made simple
Plug 'tpope/vim-surround'

" NERD tree: a tree explorer
Plug 'scrooloose/nerdtree'

" The best git wrapper ever
Plug 'tpope/vim-fugitive'

" Replace with a value in the register
Plug 'ReplaceWithRegister'


" Better line numbers
Plug 'myusuf3/numbers.vim'

" Monokai theme
Plug 'sickill/vim-monokai'

" Moar colorschemes
Plug 'flazz/vim-colorschemes'

" Linting
Plug 'scrooloose/syntastic'

" Commenting things
Plug 'tpope/vim-commentary'

" Trailing whitespace fixes
Plug 'ntpeters/vim-better-whitespace'

" Enhanced cpp highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Detects indent settings on a file by file basis
Plug 'ciaranm/detectindent'

" Git diffs in gutter
Plug 'airblade/vim-gitgutter'

" Indentation guide
Plug 'yggdroot/indentline'

" Previews for substitute
Plug 'osyo-manga/vim-over'

" Colored braces
Plug 'kien/rainbow_parentheses.vim'

" Better indented pasting
Plug 'sickill/vim-pasta'

" Using ctags to navigate functions/classes etc. quickly
Plug 'majutsushi/tagbar'

" Added repeating to plugin maps
Plug 'tpope/vim-repeat'

" Custom Text Objects
Plug 'kana/vim-textobj-user'
Plug 'wellle/targets.vim'
Plug 'glts/vim-textobj-comment'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-indent'
Plug 'michaeljsmith/vim-indent-object'

call plug#end()


" YouCompleteMe
let g:ycm_key_list_previous_completion=['<Up>']

"" Ultisnips
let g:UltiSnipsExpandTrigger="<c-tab>"

let g:airline_powerline_fonts = 1

" Set the seperators (default colored arrows in air-line) to blank
" Removes the annoying misaligned arrows
let g:airline_left_sep=''
let g:airline_right_sep=''

" Sets motion leader as <Leader> instead of <Leader><Leader>
map <Leader> <Plug>(easymotion-prefix)
map <Space> <Leader>

colorscheme molokai
set background=light

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Compatibility option for getting Syntastic and YCM to work together on C
" files
let g:ycm_show_diagnostics_ui = 0

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set number

imap jk <Esc>`^

" This remaps arrow keys to switch between windows
nmap <silent> <Up> :wincmd k<CR>
nmap <silent> <Down> :wincmd j<CR>
nmap <silent> <Left> :wincmd h<CR>
nmap <silent> <Right> :wincmd l<CR>
