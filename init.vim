" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')
"startup and sessions managers
Plug 'xolox/vim-misc' " vim-sessions require this one plugin in order to work :/
Plug 'xolox/vim-session' " vim sessions support nerd tree open panels and buffers
Plug 'mhinz/vim-startify' "bellisima y magnifica primera pantalla para vim
"Moving arround
Plug 'easymotion/vim-easymotion' "movamonos un poco mas rapidin con este easymotion
Plug 'yuttie/comfortable-motion.vim' " smooth motions and avoid get losed scrolling
Plug 'andymass/vim-matchup' " drop-in replacement for the vim plugin matchit.vim
Plug 'haya14busa/incsearch.vim' " Improved incremental searching for Vim
"GUI customization
Plug 'joshdick/onedark.vim' "Color scheme inspirado por el tema One Dark de Atom.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Temas para airline la barra en la parte baja
Plug 'yggdroot/indentline' " indent guides lines let's see how they goes
"File browsers
Plug 'mileszs/ack.vim' " ack for vim NEEDS $ brew install ack to be installed in mac
Plug 'ctrlpvim/ctrlp.vim'  "files autocomplete for vim
Plug 'scrooloose/nerdtree' "proyect tree and structure
" code browser Tags managers 
Plug 'ludovicchabant/vim-gutentags' " tags for vim, makes use of Universal Ctags which generates tags .ctags config file taken from   universal ctags from 
Plug 'majutsushi/tagbar'  "ver todas las funciones y definiciones en un panel lateral para leer codigo :O
" linters,syntax checkers and formatters
Plug 'w0rp/ale' " analizador static asincrono
Plug 'scrooloose/syntastic' " check sintaxi en tiempo real :O :O
Plug 'sbdchd/neoformat' " Neo format suppert prettier out of the box :O
" Git helpers
Plug 'airblade/vim-gitgutter' " muestra los cambios en archivos en la parte izquierda donde estan los numeros de linea
Plug 'tpope/vim-fugitive' " git on vim 
Plug 'xuyuanp/nerdtree-git-plugin' "nerd tree git status
Plug 'jiangmiao/auto-pairs' " automaticamente cierra comillas o llaves
Plug 'tpope/vim-sleuth' " ajusta la identacion y los espacios basados en el archivo :O
" vim snnipets 
Plug 'SirVer/ultisnips' " snnipets in vim  need python support in vim
Plug 'honza/vim-snippets' " ultisnips come without any snippets so here they are 
Plug 'epilande/vim-es2015-snippets' " Custom ultisnippets for ES2015 and vim
Plug 'epilande/vim-react-snippets' "Custom ultisnippets for react and vim
Plug 'ervandew/supertab' " supertab is needed  for YCM and UltiSnnipets integration
Plug 'mattn/emmet-vim' " emmet para escribir un poco mas rapidin
Plug 'mattn/webapi-vim' " emmet custom snippets need this plugin in order to work
" Syntax highlighteres 
Plug 'leshill/vim-json' " vim json syntax highlight and other things not sure
Plug 'pangloss/vim-javascript' "Vastly improved Javascript indentation and syntax support in Vim
Plug 'mxw/vim-jsx' " coloreado de sintaxis e identacion
Plug 'hail2u/vim-css3-syntax' "CSS3 syntax (and syntax defined in some foreign specifications) support for Vim's built-in syntax/css.vim
Plug 'groenewege/vim-less' "This vim bundle adds syntax highlighting, indenting and autocompletion for the dynamic stylesheet language LESS.  
" Custom vim Text Objects
Plug 'kana/vim-textobj-user' "vim-textobj-user - Create your own text objects for vim in an easy way
Plug 'kana/vim-textobj-function' " vim text objects for functions C language Java Vim script 
Plug 'haya14busa/vim-textobj-function-syntax' "extends previous one vim-textobj-function-syntax provides heuristic text-objects for function by using syntax definitions.
Plug 'michaeljsmith/vim-indent-object' " blocks of indentation as vim text objects
Plug 'kana/vim-textobj-line' "Text objects for the current line
Plug 'kana/vim-textobj-entire' "entire file as vim object
" code auto completers and helpers
Plug 'ycm-core/YouCompleteMe'  " auto completer to the game
Plug 'scrooloose/nerdcommenter' " comment lines of code using this plugin 
Plug 'alvan/vim-closetag' "Auto close (X)HTML tags
Plug 'tpope/vim-surround' "surround plugin
" other plugins
Plug 'vim-scripts/ReplaceWithRegister' "avoid visual selection when pasting 
Plug 'christoomey/vim-system-copy' " copy into the system
call plug#end()

" Luego de esta línea puedes agregar tus configuraciones y mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Hide pointless junk at the bottom, doesn't work in .vimrc for some reason?
:set laststatus=0
" i'm not agains the mouse, enable it in all modes
:set mouse=a
:set noshowmode "don't show --INSERT--
:set noruler "don't show line numbers/column/% junk

" avoid messi matchi load
let g:loaded_matchit = 1

" guicolors styles for every mode
:set termguicolors
:hi Cursor guifg=green guibg=green
:hi Cursor2 guifg=red guibg=red
:set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50

set guifont=Fira\ Code:h12

" Vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
   set termguicolors
endif
"no swap files in vim they are annoying
set noswapfile 
"vimR only configurations
if has("gui_vimr")
  " Font for vimR
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keep the error column always visible (jumpy when linter runs on input)
:set signcolumn=yes

" Indent using spaces instead of tabs
set expandtab

" tagbar necesita que esto este activado
filetype on

" The number of spaces to use for each indent
set shiftwidth=2

" Line numbers
:set number

" Don't wrap lines
:set nowrap
" split new panels down and below
:set splitbelow
:set splitright

" set a map leader for more key combos
let mapleader = " "

" open a new terminal  in aplit of the current tab
nmap <leader>st :12sp term://zsh<CR>I
nmap <leader>t :tabnew term://zsh<CR>I

" no mostrar numeros de linea cuando se abre una terminal :O :O
autocmd TermOpen * setlocal nonumber norelativenumber

"Number of spaces to use for a <Tab> during editing operations
set softtabstop=2"

" tema y apariencia 
set termguicolors  " Activa true colors en la terminal
"Enable syntax highlighting and set colorscheme
let g:onedark_terminal_italics =  1 "allow italics in one dark colorscheme
syntax enable
set background=dark
colorscheme onedark  " Activa tema onedark
"" NerdTree configs
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
let NERDTreeWinSize = 35  "estado por defecto del ancho de la barra de nerdtree
" NerdTree Refresh Root crashes with my <S-R> command for moving between tags
let NERDTreeMapRefreshRoot='r'

"Toggle file drawer in/out
nmap <leader>m :NERDTreeFind<CR>
nmap <leader>n :NERDTreeToggle<CR>

" so I can go up an down wrapped lines
map j gj
map k gk

" abrir vim.init en un ventana nueva love it
nnoremap <leader>y :tabnew $MYVIMRC<CR>

" Usar <líder> + y para copiar al portapapeles
vnoremap <leader>c "+y
nnoremap <leader>c "+y
vnoremap <leader>v "+p
nnoremap <leader>v "+P

" Usar <líder> + d para cortar al portapapeles
vnoremap <leader>x "+d
nnoremap <leader>x "+d

" Cerrar el buffer actual con <líder> + q
nnoremap <silent><S-Q> :q<CR>

" pestanaiguiente  y pesana anterior
nnoremap <S-R> gt
nnoremap <S-E> gT

" moverme entre los diferentes paneles con Shift-w
nnoremap <S-w>   <c-w>w

if has('nvim')
  " Terminal mode:
  tnoremap <M-h> <c-\><c-n><c-w>h
  tnoremap <M-j> <c-\><c-n><c-w>j
  tnoremap <M-k> <c-\><c-n><c-w>k
  tnoremap <M-l> <c-\><c-n><c-w>l
  " Insert mode:
  inoremap <M-h> <Esc><c-w>h
  inoremap <M-j> <Esc><c-w>j
  inoremap <M-k> <Esc><c-w>k
  inoremap <M-l> <Esc><c-w>l
  " Visual mode:
  vnoremap <M-h> <Esc><c-w>h
  vnoremap <M-j> <Esc><c-w>j
  vnoremap <M-k> <Esc><c-w>k
  vnoremap <M-l> <Esc><c-w>l
  " Normal mode:
  nnoremap <M-h> <c-w>h
  nnoremap <M-j> <c-w>j
  nnoremap <M-k> <c-w>k
  nnoremap <M-l> <c-w>l
  "some terminal mappings
  tnoremap jk <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap <C-v><Esc> <Esc>
  " simulare <C-R>
  tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
endif

" terminal emulator exit
" configuracion para airline
let g:airline#extensions#syntastic#enabled = 1 "syntastic esta activado 
let g:airline#extensions#branch#enabled = 1 "TBH not sure what this means
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
let g:airline#extensions#tagbar#enabled = 1 "" muestra el nombre de la funcion en la que estoy :O
let g:airline#extensions#tagbar#flags = 's'
let g:airline_section_y = ''
let g:airline_skip_empty_sections = 1
"let g:airline_section_y = %{tagbar#currenttag('[%s] ','')}
" remove separators for empty sections

"it seems that powerline fonts need this
set t_Co=256
" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1

"only display the filename in airline status 
let g:airline_section_c = '%t'

" set of text to display for each mode. this time a single letter is enought

let g:airline_mode_map = {
      \ '__'     : '-',
      \ 'c'      : 'C',
      \ 'i'      : 'I',
      \ 'ic'     : 'I',
      \ 'ix'     : 'I',
      \ 'n'      : 'N',
      \ 'multi'  : 'M',
      \ 'ni'     : 'N',
      \ 'no'     : 'N',
      \ 'R'      : 'R',
      \ 'Rv'     : 'R',
      \ 's'      : 'S',
      \ 'S'      : 'S',
      \ ''     : 'S',
      \ 't'      : 'T',
      \ 'v'      : 'V',
      \ 'V'      : 'V',
      \ ''     : 'V',
      \ }

set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)

" Configuracion para gitgutter
" Actualizar barra cada 250 mili segundos
set updatetime=250

"configuracion para ctrlp 
" Archivos ignorados
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" <C-S> to open a vertical split same a nerdTree
let g:ctrlp_prompt_mappings = {
      \ 'AcceptSelection("v")': ['<c-s>', '<RightMouse>'], 
      \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-v>'],
      \ }

" ctrlp use .gitignore
" https://github.com/kien/ctrlp.vim/issues/174
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" root of the project is where the package.json is located
let g:ctrlp_root_markers = ['package.json']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open a new tab and search for something 
nmap <leader>f :tab split<CR>:Ack! ""<left>

" en modo visual pega laeleccion en un nuevo comando ack :O :O
vnoremap <Leader>f y:Ack! <C-R>=fnameescape(@")<CR><CR>
"buscar la palabra que hay bajo el cursor en una nueva pestana
nmap <leader>F :tab split<CR>:Ack! <C-r><C-w><CR>

" necesito mirar como usar control P en modo visual 
vnoremap <Leader>p y:CtrlP<CR><Insert>

" Allow JSX in .js files
let g:jsx_ext_required=0

" ale configuraciones
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" Move between linting errors
nmap <silent> ]r <Plug>(ale_previous_wrap)
nmap <silent> [r <Plug>(ale_next_wrap)

" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
" you complete me config  for a better completion
"
" Start autocompletion after 4 chars
"let g:ycm_min_num_of_chars_for_completion = 2
"let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_enable_diagnostic_highlighting = 0

" make YCM compatible with UltiSnips (using supertab)
" taken from https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" emmet leader key to be tab
let g:user_emmet_leader_key=','
let g:user_emmet_mode='i'  " emmet only in insert mode, comma crashes with repeat search vim command

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" funciones y definiciones de variable usando f8
nmap <F8> :TagbarToggle<CR>

" tagbar auto open on supported files only
"autocmd FileType c, javascript.jsx nested :TagbarOpen
 autocmd VimEnter * nested :call tagbar#autoopen(1)
"tag bar width 
let g:tagbar_width = 50
let g:tagbar_compact = 1
let g:tagbar_indent = 1
let g:tagbar_show_visibility = 0

" fugitive git mappings 
nnoremap <silent><leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <silent><leader>gr :Gread<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nmap <silent><leader>gb :Gblame<cr>

" buscar en el documento lo que este visualmente seleccionado
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>

" siempre abre un archivo bajo el cursor en un nuevo tab
nmap gf <c-w>gf
" custom ulti snippets
let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'/.config/nvim/mycoolsnippets']

" emmet vim custom snnipets i really love snippets
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand( $HOME.'/.config/nvim/emmet_custom/snippets.json')), "\n"))
" enable jsdocs syntax highlight
let g:javascript_plugin_jsdoc = 1

"Enables some additional syntax highlighting for NGDocs. Requires JSDoc plugin to be enabled as well.
let g:javascript_plugin_ngdoc = 1

" folding code nice config
if has('folding')
  set foldmethod=indent               " not as cool as syntax, but faster
  set foldlevelstart=99               " start unfolded
endif
" toggle fold of current position Using S-tab 
"nnoremap <Tab> za
"navigate between  close folds OMG taken from https://stackoverflow.com/questions/9403098/is-it-possible-to-jump-to-closed-folds-in-vim
nnoremap <silent> <tab>j :call NextClosedFold('j')<cr>
nnoremap <silent> <tab>k :call NextClosedFold('k')<cr>
function! NextClosedFold(dir)
    let cmd = 'norm!z' . a:dir
    let view = winsaveview()
    let [l0, l, open] = [0, view.lnum, 1]
    while l != l0 && open
        exe cmd
        let [l0, l] = [l, line('.')]
        let open = foldclosed(l) < 0
    endwhile
    if open
        call winrestview(view)
    endif
endfunction

" session management
let g:session_directory = "~/.vim/session"
let g:session_autosave = "no"
let g:session_command_aliases = 1
" Allow MatchTagAlways to highlight JSX
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'javascript.jsx' : 1,
    \}

"user same colors for highlight as vim uses
let g:mta_use_matchparen_group = 1
"run neoformat on save, text changed and leaving insert mode allowing to run the UnDo
augroup fmt
  autocmd!
  autocmd BufWritePre *  Neoformat
augroup END

"ack vim mappings  and configs
"use ag command the silver searcher seems faster and well supported more than
"ack and not config needed it looks .gitignore for ignore patterns
let g:ackprg = 'ag --nogroup --nocolor --column'
" vertical splits more intuitive added to the right and equal height
let g:ack_mappings = {
      \ "t": "<C-W><CR><C-W>T",
      \ "T": "<C-W><CR><C-W>TgT<C-W>j",
      \ "go": "<CR>",
      \ "O": "<CR><C-W><C-W>:ccl<CR>",
      \ "o": "<CR><C-W>j",
      \ "h": "<C-W><CR><C-W>K",
      \ "H": "<C-W><CR><C-W>K<C-W>b",
      \ "s": "<C-W><CR><C-W>L<C-W>W<C-W>J<C-W>W<C-W>=", 
      \ "S": "<C-W><CR><C-W>L<C-W>W<C-W>J<C-W>W<C-W>=<C-W>b" }
let g:ack_lhandler = "botright lopen 20"
" startify sessions and other tweaks
let g:startify_session_dir = '~/.vim/session'
let g:startify_files_number = 10
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]
let g:startify_commands = [
      \ ':help reference',
      \ ['Vim Reference', 'h ref'],
      \ {'h': 'h ref'},
      \ {'m': ['My magical function', 'call Magic()']},
      \ ]

" save file mappings
" Iterm2 key bindings set cmd-s Send Text with 'vim' Special Chars to \<C-S>
noremap  <silent><C-S> :update<CR>
vnoremap <silent><C-S> <C-C>:update<CR>
inoremap <silent><C-S> <C-O>:update<CR>
" muestra el numero de linea relativo hacia abajo y hacia arriba relativo a
" donde estoy
:set relativenumber
" vim jumps mappings are counterintuirive
nmap <C-G> <S-G>
vnoremap <C-G> <S-G>
nmap { [{
nmap } ]}
nmap ( [(
nmap ) ])
nmap <C-H> ^
nmap <C-H> ^
vmap <C-H> ^
nnoremap <C-L> $
vnoremap <C-L> $
nnoremap <C-O> <C-I>
nnoremap <C-I> <C-O>
" map  HLM  to leader
" ir con el curso a l medio de la zona visible
nnoremap  <leader>l M
vnoremap  <leader>l M
" ir con el cursor al fina de la zona visible
" easy motions vertical movements
nmap <leader>e <Plug>(easymotion-e)
nmap <leader>w <Plug>(easymotion-w)
nmap <leader>j <Plug>(easymotion-j)
vmap <leader>j <Plug>(easymotion-j)
nmap <leader>k <Plug>(easymotion-k)
vmap <leader>k <Plug>(easymotion-k)
nmap <leader>b <Plug>(easymotion-b)
" center cursor vertically
nnoremap  <leader>h zz
vnoremap  <leader>h zz
"nmap <C-D> gd
"ctrlp conflict
let g:ctrlp_map = '<leader>p'
" ctrp mapping 
nmap <leader>p <C-P>
" vim Tags mappings are awfull
nnoremap <C-P> g<c-]>
nnoremap <C-U> :pop<cr>
let g:AutoPairsMapCh = 'C-.'
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>a
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-^> <C-o><C-^> 
"g*  next matching search (not whole word) pattern under cursor
"g#  previous matching search (not whole word) pattern under cursor
"gd  go to definition/first occurrence of the word under cursor
"let g:comfortable_motion_no_default_key_mappings=1
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 100  " Feel free to increase/decrease this value.
" scroll down and up half of the page smoothly
nnoremap <silent> <C-j> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier  * 1)<CR>
vnoremap <silent> <C-j> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier  * 1)<CR>
nnoremap <silent> <C-k> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier  * -1)<CR>
vnoremap <silent> <C-k> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier  * -1)<CR>
" search mappings
" `<Tab>`/`<S-Tab>` to move between matches without leaving incremental search.
" Note dependency on `'wildcharm'` being set to `<C-z>` in order for this to
" work.
"cnoremap <expr> <Tab> getcmdtype() == '/' \|\| getcmdtype() == '?' ? '<CR>/<C-r>/' : '<C-z>'
cnoremap <expr> <S-Tab> getcmdtype() == '/' \|\| getcmdtype() == '?' ? '<CR>?<C-r>/' : '<S-Tab>'
" Store relative line number jumps in the jumplist if they exceed a threshold.
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'
"nnoremap Q @q
"Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>
" jk | Escaping!
inoremap jk <Esc>
xnoremap jk <Esc>
cnoremap jk <C-c>
" maximum lenght of characters displayed in a git diff 
highlight ColorColumn ctermbg=gray
set colorcolumn=125
" inc search plugin mappings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" interactive find replace preview
set inccommand=nosplit
" replace word under cursor, globally, with confirmation
nnoremap <Leader>r :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
vnoremap <Leader>r y :%s/<C-r>"//gc<Left><Left><Left>
" clear search with shift+enter
nnoremap <C-CR> :noh<CR>
" gutentags out if the way
let g:gutentags_cache_dir = $HOME .'/.cache/guten_tags'
"let g:gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')
"if g:gitroot !=# ''
  "let g:gutentags_cache_dir = g:gitroot .'/.git/tags'
"else
  "let g:gutentags_cache_dir = $HOME .'/.cache/guten_tags'
"endif
"let g:gutentags_exclude_project_root = ['/usr/local', $HOME]
let g:gutentags_file_list_command = {
      \ 'markers': {
      \ '.git': 'git ls-files',
      \ },
      \ }
let g:gutentags_resolve_symlinks = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_write = 1
" autocompletion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
