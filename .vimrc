" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"
"  VIM Configuration File Optimized for Programming
"
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


" - - - - - - - - - - - - -
"  1. Introduction
" - - - - - - - - - - - - -
"
"  After some time writing code with VIM I have arrived to this configuration
"  file with match most of my needs when coding both Perl and Ruby.
"
"  It's clearly not a definitive file and I will change from time to time
"  but if you get this file I hope it will help you to code faster :-)
"
"  This file come to you with absoulte NO warranty
"  ( specially if you are a bad coder ;) )
"



" - - - - - - - - - - - - - - - - - - - -
"  2. Installation Instructions
" - - - - - - - - - - - - - - - - - - - -
"
"
" 1. Create new backup directories
"  $ mkdir -p ~/.vim/{backup_files,swap_files,undo_files,colors}
"
"
" 2. Download Plugged (which is the plugin manager I decided to use)
"  $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  $ mkdir -p ~/.vim/autoload ~/.vim/bundle && \curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
"  $ cd ~/.vim/bundle && \git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
"
" 3. Link to monokai  (you can use molokai if you want)
"  $ ln -s ~/.vim/plugged/molokai/colors/molokai.vim ~/.vim/colors
"  $ ln -s ~/.vim/plugged/vim-monokai/colors/monokai.vim ~/.vim/colors
"  $ ln -s ~/.vim/plugged/vim-valloric-colorscheme/colors/valloric.vim ~/.vim/colors
"  $ ln -s ~/.vim/plugged/idle/colors/idle.vim ~/.vim/colors
"  $ ln -s ~/.vim/plugged/badwolf/colors/badwolf.vim ~/.vim/colors
"  $ ln -s ~/.vim/plugged/molokai-dark/colors/molokai-dark.vim ~/.vim/colors/
"
"
" 4. You must install these fonts if you want to see special characters in the
" status line
"  $ git clone https://github.com/powerline/fonts


" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"  3. Shortcuts!
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
let mapleader=","          " Yes!, comma must be the leader

" Find in this file
map <leader>f /
" Remove search highlights
map <leader>h :noh<CR>
" <C-CR> Open Definition (ctags)
map <C-CR> <C-]>
" Open ctag definition
map <leader>, <C-]>
" Open ctag definition (NEW TAB!)
map <leader>; <C-w><C-]><C-w>T
" Open ctag definition (LIST!)
map <leader>m :ts<CR>
" <C-BS> Go back from the definition
map <C-BS> <C-t>
map <leader>. <C-t>
" ,ls    | Buffer listing
map <leader>ls :ls<CR>
" ,n    | Buffer next
map <leader>n :bn<CR>
" ,b    | Buffer back
map <leader>b :bp<CR>
" ,c    | Close all Buffers
map <leader>c :%bd<CR>
" ,x    | Close current Buffer
map <leader>x :bd<CR>
" ,d    | Open Method's Definition
map <leader>d :TagbarOpenAutoClose<CR>
" ,cr   | Checks for ruby syntax
map <leader>cr :!ruby -c %<CR>
" ,e    | Check syntax
map <leader>e :SyntasticCheck<CR>
" ,f    | Find everywhere
map <C-f> :Ag! --hidden -a <C-R><C-W><CR>
" ,g-   | git checkout -- <file>
map <leader>g- :Git checkout -- %<CR>
" ,ga   | git add <file>
map <leader>ga :Gwrite<CR>
" ,gb   | git blame <file>
map <leader>gb :Gblame<CR>
" ,gc   | git commit <file>
map <leader>gc :Gcommit<CR>
" ,gr   | git reset <file>
map <leader>gr :Git reset %<CR>
" ,gp   | git push <file>
map <leader>gp :Gpush<CR>
" ,gs   | git status <file>
map <leader>gs :Gstatus<CR>
" ,gu   | git pull <file>
map <leader>gu :Gpull<CR>
" ,l    | Toggle limelight (AKA focusin)
map <leader>l :Limelight!!0.8<CR>
" ,a    | Tab left
map <leader>a :tabprevious<CR>
" ,s    | Tab right
map <leader>s :tabnext<CR>
" ,r    | Check Ruby Syntax
map <Leader>r :RuboCop<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"  Don't like backup/swap files everywhere, so I confined them here
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set backupdir=~/.vim/backup_files/
set directory=~/.vim/swap_files/
set undodir=~/.vim/undo_files/

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"  General Vim Configuration
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
syntax on                                           " Who can work without syntax highlighting
set t_Co=256
set background=dark

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

set binary                                          " Don't remember :-) (?)
set encoding=utf-8                                  " Set encoding to UTF8
set backspace=2                                     " Because I like this backspace behavior
set laststatus=2                                    " Status line always present
set nowrap                                          " If you're a good coder, you shouldn't note the difference
set noeol                                           " Not end of line (?)
set number                                          " Numbering lines
set wildmenu                                        " show a navigable menu for tab completion
set wildmode=longest,list,full                      " More configurations for wild-menu
set colorcolumn=110                                 " Set a visual wrap line
"set guifont=Roboto\ Mono\ light\ for\ Powerline:h15 " I really like this font
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h15 " I really like this font
set autochdir                                       " ctags configuration
set tags=tags;                                      " ctags configuration
"set mouse=a                                         " Make mouse work in the terminal
highlight ColorColumn guibg=red3                    " Set Red Color for visual wrap line
highlight ColorColumn ctermbg=red                   " Set Red Color for visual wrap line


" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"  Search Configuration
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set hlsearch                            " Highlight search (sometimes is awful)
set ignorecase                          " Use iwth smart case for best searching experience"
set incsearch                           " Incremental search
set smartcase                           " Use case sensitive smart



" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" To Tab Or Not To Tab, that's the flame-war
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set autoindent                          " Autoindent
set nocindent                           " Good autoindent :-)
set tabstop=2 shiftwidth=2 expandtab

execute pathogen#infect()
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"  Plugins! (and its configurations)
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
call plug#begin('~/.vim/plugged')
Plug 'pkukulak/idle'                                                " idle    - Testing this colorscheme for Ruby
Plug 'tomasr/molokai'                                               " molokai - Sublime like colorscheme
Plug 'pR0Ps/molokai-dark'                                           " molokai_dark - A better version
Plug 'sickill/vim-monokai'                                          " monokai - Nice colorscheme
Plug 'Valloric/vim-valloric-colorscheme'                            " valoric - High contrast colorscheme
Plug 'sjl/badwolf'                                                  " badwolf - Good high contrats colorscheme
Plug 'roosta/vim-srcery'                                            " vim-srcery

Plug 'bling/vim-airline'                                            " airline - a very nice statys line
Plug 'vim-airline/vim-airline-themes'                               " airline - themes
let g:airline_theme = 'light'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod = ':t'
Plug 'rking/ag.vim'                                                 " ag - Silver Searcher plugin (the fastest searcher)
let g:ag_working_path_mode="r"                                      " ag > start searching from your project root instead of the cwd
Plug 'ctrlpvim/ctrlp.vim'                                           " ctrp+p Plugin - Fuzzy Finder Plugin
Plug 'Raimondi/delimitMate'                                         " delimitmate - Autocomplete braces and quotes
Plug 'tpope/vim-fugitive'                                           " fugitive - GIT with stereoids for vim
Plug 'airblade/vim-gitgutter'                                       " gitgutter - To see git changes beside line numbers
nmap <C-i> <leader>ig
Plug 'junegunn/limelight.vim'                                       " limelight - Fade unimportant things while writing
Plug 'terryma/vim-multiple-cursors'                                 " vim-multiple-cursors - To edit files w/multiple cursors
Plug 'scrooloose/nerdcommenter'                                     " nerdcommenter - Comment code easily
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }				" nerdtree - Very nice file manager
map <C-m> :NERDTreeToggle<CR>
Plug 'jistr/vim-nerdtree-tabs'										" nerdtree - Tabs, to use tabs painlessly
let g:nerdtree_tabs_open_on_console_startup = 1
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'galli-a/persistentvisuals'                                    " persistentvisuals - This is nice when you use < or > to reindent
Plug 'ngmy/vim-rubocop'                                             " rubocop - Ruby specific to check syntax
let g:vimrubocop_config = '~/rubocop.yml'
let g:vimrubocop_keymap = 0
Plug 'scrooloose/syntastic'                                         " syntastic - Syntax Checker
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=2                                   " Height of syntastic errors
Plug 'ervandew/supertab'                                            " supertab - To autocomplete with tab   - TO BE REMOVED
let g:SuperTabLongestEnhanced = 1
let g:SuperTabLeadingSpaceCompletion = 0
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType ="<C-X><C-O>"
Plug 'majutsushi/tagbar'                                            " tagbar
Plug 'vim-scripts/taghighlight'                                     " TagHighlight - This is to highlight also the tags
Plug 'ntpeters/vim-better-whitespace'                               " trailing-whitespace - Mark trailing whitespaces in red
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm = 0                                  " Preventing asking every time before saving
let g:better_whitespace_guicolor ='red'

call plug#end()

colorscheme molokai%
