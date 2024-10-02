set encoding=utf-8
scriptencoding utf-8

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-endwise' "This is a simple plugin that helps to end certain structures automatically.
Plug 'tpope/vim-surround' "The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-fugitive' "Best Git wrapper ever.
Plug 'airblade/vim-gitgutter' "A Vim plugin which shows a git diff in the 'gutter' (sign column).
Plug 'bling/vim-airline' "lean & mean status/tabline for vim that's light as air.
Plug 'scrooloose/nerdtree' "A tree explorer plugin for vim.
Plug 'Xuyuanp/nerdtree-git-plugin' "Git infos in nerdtree
Plug 'fatih/vim-go' "Go development plugin for Vim.
Plug 'hexdigest/gounit-vim' "Go unit test generation
Plug 'myusuf3/numbers.vim' "numbers.vim is a vim plugin for better line numbers.
Plug 'majutsushi/tagbar' "Vim plugin that displays tags in a window, ordered by scope.
Plug 'xolox/vim-misc' "Miscellaneous auto-load Vim scripts.
Plug 'xolox/vim-easytags' "Automated tag file generation and syntax highlighting of tags in Vim.
Plug 'jistr/vim-nerdtree-tabs' "NERDTree and tabs together in Vim, painlessly.
Plug 'gabesoft/vim-ags' "Silver searcher plugin for vim.
Plug 'Quramy/vison' "A Vim plugin for writing JSON with JSON Schema.
Plug 'terryma/vim-multiple-cursors' "True Sublime Text style multiple selections for Vim.
Plug 'vim-scripts/ZoomWin' "Zoom in/out of windows (toggle between one window and multi-window).
Plug 'scrooloose/syntastic' "Syntax checking hacks for vim.
Plug 'ctrlpvim/ctrlp.vim' "Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder.
Plug 'vim-scripts/ShowTrailingWhitespace' "Detect unwanted whitespace at the end of lines.
Plug 'vim-scripts/DeleteTrailingWhitespace' "Delete unwanted whitespace at the end of lines.
Plug 'tpope/vim-unimpaired' "unimpaired.vim: pairs of handy bracket mappings.
Plug 'tpope/vim-repeat' "repeat.vim: enable repeating supported plugin maps with '.'.
Plug 'mhinz/vim-startify' "The fancy start screen for Vim.
Plug 'tpope/vim-commentary' "commentary.vim: comment stuff out.
" Plug 'jlanzarotta/bufexplorer' "BufExplorer Plugin for Vim.
Plug 'tpope/vim-dispatch' "dispatch.vim: asynchronous build and test dispatcher.
Plug 'wincent/ferret' "Enhanced multi-file search for Vim.
Plug 'kshenoy/vim-signature' "Plugin to toggle, display and navigate marks.
Plug 'joonty/vdebug' "Multi-language DBGP debugger client for Vim (PHP, Python, Perl, Ruby, etc.).
Plug 'bronson/vim-visual-star-search' "Start a * or # search from a visual block
Plug 'vim-scripts/taglist.vim' "Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc).
" Plug 'vimwiki/vimwiki' "Personal Wiki for Vim.
Plug 'wincent/loupe' "Enhanced in-file search for Vim
Plug 'digitaltoad/vim-pug' "Vim Pug (formerly Jade) template engine syntax highlighting and indention
Plug 'mtscout6/syntastic-local-eslint.vim' "Prefer local repo install of eslint over global install with syntastic
Plug 'dkprice/vim-easygrep' "Fast and Easy Find and Replace Across Multiple Files
Plug 'airblade/vim-rooter' "Changes Vim working directory to project root (identified by presence of known directory or file)
Plug 'devjoe/vim-codequery' "Search + Browse + Understand your code more efficiently
Plug 'maksimr/vim-jsbeautify'
Plug 'editorconfig/editorconfig-vim'
Plug 'davidhalter/jedi-vim' "Using the jedi autocompletion library for VIM.
Plug 'ervandew/supertab' "Perform all your vim insert mode completions with Tab
" Plug 'vim-scripts/DrawIt' "Ascii drawing plugin: lines, ellipses, arrows, fills, and more
Plug 'lpenz/vimcommander' "Total-commander-like file manager for VIM
Plug 'python-mode/python-mode', { 'branch': 'develop' } "Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box
Plug 'junegunn/goyo.vim' "distraction free writing
Plug 'flazz/vim-colorschemes'
Plug 'mrk21/yaml-vim'
Plug 'xolox/vim-session'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Rykka/riv.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug '~/.fzf'
" Plug 'tpope/vim-git'
" Plug 'vim-scripts/Gundo' "vim-scripts/Gundo.
" Plug 'vim-scripts/a.vim' "Alternate Files quickly (.c --> .h etc).
" Plug 'Shougo/unite.vim' "Unite and create user interfaces.
" Plug 'edkolev/tmuxline.vim' "Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration.
" Plug 'tpope/vim-flagship' "flagship.vim: Configurable and extensible tab line and status line.
" Plug 'wincent/terminus' "Enhanced terminal integration for Vim.
" Plug 'vimoutliner/vimoutliner' "Work fast, think well.
" Plug 'derekwyatt/vim-scala' "Integration of Scala into Vim.
" Plug 'wesleyche/Trinity' "A (G)Vim plugin which build the trinity of Source Explorer, TagList and NERD tree to be an IDE for software development.
" Plug 'wesleyche/SrcExpl' "A (G)Vim plugin for exploring the source code based on 'tags', and it works like the context window of 'Source Insight'.
" Plug 'ktvoelker/sbt-vim' "A plugin for using sbt from within Vim.
" Plug 'gcmt/taboo.vim' "Few utilities for pretty tabs.

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.status == 'updated' || a:info.force
    " !./install.py --clang-completer
    !./install.py --clang-completer --gocode-completer
  endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }


call plug#end()

filetype on

" Indent automatically depending on filetype
filetype plugin indent on
set autoindent

" Turn on line numbering. Turn it off with "set nonu"
set number

" Set syntax on
syntax on

" Case insensitive search
set ic

" Highlight search
set hls

" Wrap text instead of being on one line
set lbr

" for colorschemes
set t_Co=256

" Change colorscheme
colorscheme molokai

" Change the visual higlighting
hi Visual term=reverse ctermbg=DarkBlue guibg=LightGrey

" Change tab behaviour
set tabstop=4
set shiftwidth=4
set expandtab

set switchbuf=usetab,newtab

" source ~/.simplenoterc

"set list!
"set listchars=tab:>-

" Airline
"
set laststatus=2
let g:airline_powerline_fonts = 1

" Gundo
"
nnoremap <F6> :GundoToggle<CR>

" Disable Ex Mode
"
nnoremap Q <nop>

" Better display of wrapped lines
"
set showbreak=↪

" Toggle for line numbers
"
nmap <C-N><C-N> :set invnumber<CR>
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" Toggle for Tagbar
"
nmap <F8> :TagbarToggle<CR>

" Toggle for NERDTreeTabs
"
nmap <F9> :NERDTreeTabsToggle<CR>

" YCM settings
"
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" EasyTags settings
"
let g:easytags_async = 1
let g:easytags_syntax_keyword = 'always'

" Use old regex engine with easytags because with the new one Vim gets pretty slow
"
set regexpengine=1

" Lightline settings
"
" let g:lightline = {
      " \ 'colorscheme': 'wombat',
      " \ 'component': {
      " \   'readonly': '%{&readonly?"x":""}',
      " \ },
      " \ 'separator': { 'left': '', 'right': '' },
      " \ 'subseparator': { 'left': '|', 'right': '|' }
      " \ }

" " Tmuxline settings
" "
" autocmd VimEnter * AirlineTheme molokai

" " Set tmux line only if running in a tmux session
" "
" if ( exists( "$TMUX" ) )
"     autocmd VimEnter * Tmuxline airline
"     let g:tmuxline_powerline_separators = 0
" endif

" Flagship settings
"
" set guioptions-=e
" let g:tablabel="%N%{flagship#tabmodified()} %{flagship#tabcwds('shorten',',')}"

" Syntastic settings
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_pug_checkers = ['pug-lint']

let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = '≈'

let g:syntastic_python_flake8_args="--ignore=E501"
let g:syntastic_python_checkers=['pep8', 'pylint']
let g:syntastic_python_pylint_args="--disable=C"

" Change tab completion settings
"
set wildmenu
set wildmode=full

" Increase command history
"
set history=200

" Remap <C-p> & <C-n> to behave like Up & Down
"
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Automagically delete all trailing whitespaces on write
"
let g:DeleteTrailingWhitespace_Action='delete'

" Keep some context lines while scrolling
"
set scrolloff=3

" Show buffers in status line
"
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnamemod = ':p:.'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#buffer_min_count = 0
let g:airline#extensions#tabline#tab_min_count = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" Startify settings
"
let g:startify_session_persistence = 1
let g:startify_custom_header =
  \ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']

" Taboo settings
"
" let g:taboo_tab_format=" %P/%f%m "
" let g:taboo_renamed_tab_format=" %N [%l]%m "
" set sessionoptions+=tabpages,globals

" Enable hidden buffers
"
set hidden

" list of my vimwikis
"
let wiki = {'path': '~/vimwiki/Work/', 'path_html': '~/public_html/vimwiki/Work'}
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
let g:vimwiki_list = [wiki]

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
"
nnoremap <silent> <F10> :BufExplorer<CR>
nnoremap <silent> <S-F10> :bn<CR>
nnoremap <silent> <M-F10> :bp<CR>

" Tagbar integration for Vimwiki
"
let g:tagbar_type_vimwiki = {
          \   'ctagstype':'vimwiki'
          \ , 'kinds':['h:header']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header'}
          \ , 'sort':0
          \ , 'ctagsbin':'vwtags.py'
          \ , 'ctagsargs': 'default'
          \ }

" gotags settings
"
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

" Trinity
"
" nmap <F7> :TrinityToggleAll<CR>
" let g:SrcExpl_pluginList = [
"         \ "__Tag_List__",
"         \ "NERD_tree_1"
"     \ ]

" Adjust NERDTree window width
"
let g:NERDTreeWinSize=50

" Easier split navigation
"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" More natural split opening
"
set splitbelow
set splitright

" Enable autoread
"
set autoread

" Jenkinsfiles are Groovy files
"
au BufRead,BufNewFile Jenkinsfile set filetype=groovy

" Folding
"
inoremap <F11> <C-O>za
nnoremap <F11> za
onoremap <F11> <C-C>za
vnoremap <F11> zf

" Rooter
"
let g:rooter_patterns = ['.git', '.git/']
let g:rooter_change_directory_for_non_project_files = 'current'

" Show current buffer in NERDTree
"
map <leader>r :NERDTreeFind<cr>

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
"   let g:pymode_rope = 1

"   " Documentation
"   let g:pymode_doc = 1
"   let g:pymode_doc_key = 'K'

"   "Linting
   let g:pymode_lint = 0
"   let g:pymode_lint_checker = "pylint,pyflakes,pep8"
"   let g:pymode_lint_cwindow = 1
"   " Auto check on save
"   let g:pymode_lint_on_write = 1

"   " Support virtualenv
"   let g:pymode_virtualenv = 1

"   " Enable breakpoints plugin
"   let g:pymode_breakpoint = 1
"   let g:pymode_breakpoint_bind = '<leader>b'

"   " Syntax highlighting
"   let g:pymode_syntax = 1
"   let g:pymode_syntax_all = 1
"   let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"   let g:pymode_syntax_space_errors = g:pymode_syntax_all

"   " Don't autofold code
"   let g:pymode_folding = 0

"   " Last but not least, check Python 3 syntax
   let g:pymode_python = 'python3'

"   " C-Space is used by me for tmux, so let's change it
"   "
"   let g:pymode_rope_completion_bind = '<C-c>c'

"   " Don't start autocompletion on dot
"   "
"   " let g:pymode_rope_complete_on_dot = 0

" Disable vim automatic visual mode on mouse select
"
set mouse-=a

" Group autocmds together
"
augroup my_autocmds
    autocmd!
    " NERDtree autocmds
    autocmd StdinReadPre * let s:std_in=1
    " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

    " Close preview window automatically
    "
    autocmd CompleteDone * pclose

    " Autupep8 settings
    "
    autocmd FileType python setlocal formatprg=autopep8\ -
augroup END

" Mappings to edit & source my .vimrc
"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

noremap <silent> <F7> :cal VimCommanderToggle()<CR>

" Some mappings for my name & email address
"
inoremap <leader>hds Hans-Dieter Stich
inoremap <leader>hde <hans-dieter.stich@continental-corporation.com>

" js-beautifier
"
nnoremap <leader>fjs :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <leader>fjs :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <leader>fjs :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <leader>fjs :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <leader>fjs :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <leader>fjs :call CSSBeautify()<cr>

" let g:session_directory = './'
let g:session_autosave_periodic = 5
let g:session_autoload = 'no'
let g:session_autosave = 'no'

let g:indent_guides_auto_colors = 1

"noremap ö l
"noremap l k
"noremap k j
"noremap j h
" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
"
" " For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>
"
" EOF
"

