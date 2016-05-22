" My plugins start here
call plug#begin('~/.vim/plugged')

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

call plug#end()

let g:airline_powerline_fonts = 1

" Set the seperators (default colored arrows in air-line) to blank
" Removes the annoying misaligned arrows
let g:airline_left_sep=''
let g:airline_right_sep=''

" Sets motion leader as <Leader> instead of <Leader><Leader>
map <Leader> <Plug>(easymotion-prefix)

colorscheme monokai

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

autocmd BufReadPre,FileReadPre * :DetectIndent
