# requirements

## useful links

https://stsewd.dev/es/posts/neovim-plugins/
https://stsewd.dev/es/posts/neovim-installation-configuration/

## compile YCM using typescript engine

run \$ /install.py --ts-completer
create a jsconfig.json file with

```
{
    "compilerOptions": {
        "target": "es6"
    },
    "exclude": ["node_modules"]
}
```

https://github.com/ycm-core/YouCompleteMe#javascript-and-typescript-semantic-completion

## YCM uses term config file

create a `.tern-config` and fill it with
https://github.com/ternjs/tern/issues/759#issuecomment-315607047

## ag the silver searcher

ackvim support ag the silver searcher as a command so we need to install it
\$brew install the_silver_searcher

## universal ctags needed by gutentags

install ctags and use it as default local bin OSX has its own ctags package and sucks
brew install ctags
Afterwards, you may need to set the alias to the new version by running:
alias ctags="`brew --prefix`/bin/ctags"
alias ctags >> ~/.zshrc
clone this .ctags file under ~/.ctags https://github.com/romainl/ctags-patterns-for-javascript
echo "set tags=tags" >> ~/.vimrc
ignore tags in local git repository using
\$ echo "tags" >> .git/info/exclude

## build neovim from source :O :O

clone the repository
install build dependencies
https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites
`brew install ninja libtool automake cmake pkg-config gettext`
`git clone https://github.com/neovim/neovim.git`
`cd neovim`
then build it into the OSX bins folder
this builds the release version
`$make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=/usr/local install`
run `:checkhealth` for more info ;)
