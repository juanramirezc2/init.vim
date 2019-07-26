" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'joshdick/onedark.vim' "Color scheme inspirado por el tema One Dark de Atom.
Plug 'tpope/vim-surround' "surround plugin
Plug 'scrooloose/nerdtree' "proyect tree and structure
Plug 'tpope/vim-fugitive'
Plug 'xuyuanp/nerdtree-git-plugin' "nerd tree git status
Plug 'ctrlpvim/ctrlp.vim'  "files autocomplete for vim
Plug 'mattn/emmet-vim' " emmet para escribir un poco mas rapidin
Plug 'easymotion/vim-easymotion' "movamonos un poco mas rapidin con este easymotion
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Temas para airline la barra en la parte baja
Plug 'airblade/vim-gitgutter' " muestra los cambios en archivos en la parte izquierda donde estan los numeros de linea
Plug 'jiangmiao/auto-pairs' " automaticamente cierra comillas o llaves
Plug 'mileszs/ack.vim' " ack for vim
Plug 'prettier/vim-prettier', { 'do': 'npm install' } " post install (yarn install | npm install)
Plug 'kana/vim-arpeggio' " permite JK para entrar en insert mode 
Plug 'w0rp/ale' " analizador static asincrono
Plug 'tpope/vim-sensible' " algunas configuraciones por defecto para vim por tpope
Plug 'pangloss/vim-javascript' "Vastly improved Javascript indentation and syntax support in Vim
Plug 'mxw/vim-jsx' " coloreado de sintaxis e identacion
Plug 'tpope/vim-sleuth' " ajusta la identacion y los espacios basados en el archivo :O
Plug 'ervandew/supertab' " autocompletado usado tab :O
Plug 'ycm-core/YouCompleteMe'  " auto completer to the game
Plug  'scrooloose/syntastic' " check sintaxi en tiempo real :O :O
Plug 'majutsushi/tagbar'  "ver todas las funciones y definiciones en un panel lateral para leer codigo :O
call plug#end()

" Luego de esta línea puedes agregar tus configuraciones y mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Hide pointless junk at the bottom, doesn't work in .vimrc for some reason?
:set laststatus=0
:set noshowmode "don't show --INSERT--
:set noruler "don't show line numbers/column/% junk

" Vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
   set termguicolors
endif

"vimR only configurations
if has("gui_vimr")
  " Font for vimR
endif

"Enable syntax highlighting and set colorscheme
syntax enable
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

"JK for insert mode using vim arpeggio
call arpeggio#map('i','',0,'jk','<ESC>') 

" set a map leader for more key combos
let mapleader = " "

" open a new terminal  in aplit of the current tab
nmap <leader>st :12sp term://zsh<CR>I
nmap <leader>et :tabnew term://zsh<CR>I

" no mostrar numeros de linea cuando se abre una terminal :O :O
autocmd TermOpen * setlocal nonumber norelativenumber

"Number of spaces to use for a <Tab> during editing operations
set softtabstop=2"

" tema y apariencia 
set termguicolors  " Activa true colors en la terminal
colorscheme onedark  " Activa tema onedark

" nerdtree config
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
let NERDTreeWinSize = 35  "estado por defecto del ancho de la barra de nerdtree
"Toggle file drawer in/out
nmap <leader>n :NERDTreeFind<CR>
nmap <leader>m :NERDTreeToggle<CR>

" so I can go up an down wrapped lines
map j gj
map k gk

" limpiar la busqueda usando shift enter 
nnoremap <leader><CR> :noh<CR>

" abrir vim.init en un ventana nueva love it
nnoremap <leader>t :tabnew $MYVIMRC<CR>

" Usar <líder> + y para copiar al portapapeles
vnoremap <leader>c "+y
nnoremap <leader>c "+y

" Usar <líder> + d para cortar al portapapeles
vnoremap <leader>x "+d
nnoremap <leader>x "+d

" Usar <líder> + p para pegar desde el portapapeles
nnoremap <leader>v "+p
vnoremap <leader>v "+p
nnoremap <leader>v "+P
vnoremap <leader>v "+P


" Cerrar el buffer actual con <líder> + q
nnoremap <leader>q :q<CR>

" pestanaiguiente  y pesana anterior
nnoremap <leader>r gt
nnoremap <leader>e  gT
" map  HLM  to leader
" ir al inicio de la zona visible
nnoremap  <leader>k H
vnoremap  <leader>k H
" ir con el curso a l medio de la zona visible
nnoremap  <leader>l M
vnoremap  <leader>l M
" ir con el cursor al fina de la zona visible
nnoremap  <leader>j L
vnoremap  <leader>j L
" center cursor vertically
nnoremap  <leader>h zz
vnoremap  <leader>h zz

" moverme entre los diferentes paneles
nmap <leader>w <C-w>w

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
endif

" terminal emulator exit
:tnoremap <Esc> <C-\><C-n>

" configuracion para airline
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1

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

" ctrlp use .gitignore
" https://github.com/kien/ctrlp.vim/issues/174
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" ctrlp is very smart and try to guest the proyect dir, but i don't need that
let g:ctrlp_working_path_mode = ""

" prettier configs
" Use babylon parser with prettier
let g:prettier#config#parser="babylon"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Run prettier asynchronously before saving
"let g:prettier#autoformat=0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md PrettierAsync

" Open a new tab and search for something 
nmap <leader>f :tab split<CR>:Ack! ""<left>

" en modo visual pega laeleccion en un nuevo comando ack :O :O
vnoremap <Leader>f y:Ack <C-r>=fnameescape(@")<CR><CR>

""buscar la palabra que hay bajo el cursor en una nueva pestana
nmap <leader>F :tab split<CR>:Ack! <C-r><C-w><CR>

" ctrp mapping 
nmap <leader>p <C-P>

" necesito mirar como usar control P en modo visual 
vnoremap <Leader>p y:CtrlP<CR><Insert>

" atajo para guardar usando ctrl-s :w que pereza
noremap  <D>s :update<CR>
vnoremap <D>s <C-C>:update<CR>
inoremap <D>s <C-O>:update<CR>

" ultima posision del cursor
nmap <leader>o <C-I>
nmap <leader>i <C-O>

" Allow JSX in .js files
let g:jsx_ext_required=0

" Mappings for moving lines and preserving indentation
" http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" ale configuraciones
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" you complete me config  for a better completion
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

"syntastic  configurations for newbies 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" funciones y definiciones de variable usando f8
nmap <F8> :TagbarToggle<CR>

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
