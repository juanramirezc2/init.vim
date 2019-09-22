" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

"" Directorio de plugins 
call plug#begin('~/.local/share/nvim/plugged')
" code auto completers and helpers
Plug 'heavenshell/vim-jsdoc' "jsdoc.vim generates JSDoc block comments based on a function signature
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}"
Plug 'mattn/emmet-vim' " emmet para escribir un poco mas rapidin
Plug 'mattn/webapi-vim' " emmet custom snippets need this plugin in order to work
Plug 'scrooloose/nerdcommenter' " comment lines of code using this plugin 
Plug 'alvan/vim-closetag' "Auto close (X)HTML tags
Plug 'tpope/vim-surround' "surround plugin
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
Plug 'ntpeters/vim-better-whitespace' "Vim Better Whitespace Plugin
Plug 'Shougo/echodoc.vim' "Print documents in echo area.
Plug 'joshdick/onedark.vim' "Color scheme inspirado por el tema One Dark de Atom.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Temas para airline la barra en la parte baja
Plug 'yggdroot/indentline' " indent guides lines let's see how they goes
"File browsers
Plug 'Shougo/denite.nvim' "Denite is a dark powered plugin for Neovim/Vim to unite all interfaces.
Plug 'scrooloose/nerdtree' "proyect tree and structure
" code browser Tags managers 
"Plug 'ludovicchabant/vim-gutentags' " tags for vim, makes use of Universal Ctags which generates tags .ctags config file taken from   universal ctags from 
" Git helpers
Plug 'airblade/vim-gitgutter' " muestra los cambios en archivos en la parte izquierda donde estan los numeros de linea
Plug 'rhysd/git-messenger.vim' "Neovim plugin to reveal the commit messages under the cursor
Plug 'tpope/vim-fugitive' " git on vim 
Plug 'xuyuanp/nerdtree-git-plugin' "nerd tree git status
Plug 'jiangmiao/auto-pairs' " automaticamente cierra comillas o llaves
" vim snnipets 
Plug 'honza/vim-snippets' " ultisnips come without any snippets so here they are 
Plug 'epilande/vim-es2015-snippets' " Custom ultisnippets for ES2015 and vim
Plug 'epilande/vim-react-snippets' "Custom ultisnippets for react and vim
" Syntax highlighteres 
Plug 'sheerun/vim-polyglot' " general purpose highliter
" Custom vim Text Objects
Plug 'kana/vim-textobj-user' "vim-textobj-user - Create your own text objects for vim in an easy way
Plug 'michaeljsmith/vim-indent-object' " blocks of indentation as vim text objects
Plug 'kana/vim-textobj-line' "Text objects for the current line
Plug 'kana/vim-textobj-entire' "entire file as vim object
" other plugins
Plug 'vim-scripts/ReplaceWithRegister' "avoid visual selection when pasting 
Plug 'christoomey/vim-system-copy' " copy into the system
" custom caracters in vim emojis 😏
Plug 'junegunn/vim-emoji'
"distraction free let's hope this work
Plug 'junegunn/goyo.vim'
" file icons
Plug 'ryanoasis/vim-devicons' " vim will become visual studio 
Plug '907th/vim-auto-save' "Automatically save changes to disk in Vim
Plug 'rhysd/clever-f.vim' "Extended f, F, t and T key mappings for Vim. 
Plug 'wellle/targets.vim'  "Vim plugin that provides additional text objects
Plug 'junegunn/vim-easy-align' "A Vim alignment plugin
Plug 'chaoren/vim-wordmotion' "More useful word motions for Vim
call plug#end()
