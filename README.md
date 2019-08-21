# requirements

## useful links

[neovim plugins](https://stsewd.dev/es/posts/neovim-plugins)
[neovim instalation and configuration](https://stsewd.dev/es/posts/neovim-installation-configuration)

## allow terminal to access the clipboard

```sh
$brew install pbcopy
```

## compile YCM using typescript engine

run

```sh
$ youcompleteme/install.py --ts-completer

```

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
`https://github.com/ternjs/tern/issues/759#issuecomment-315607047`

## ag the silver searcher

ackvim support ag the silver searcher as a command so we need to install it

```sh
$brew install the_silver_searcher
```

## universal ctags needed by gutentags

install ctags and use it as default local bin OSX has its own ctags package and sucks
brew install ctags
Afterwards, you may need to set the alias to the new version by running:

```sh
alias ctags="`brew --prefix`/bin/ctags"
alias ctags >> ~/.zshrc
```

clone this .ctags file under `~/.ctags`

```sh
git clone https://github.com/romainl/ctags-patterns-for-javascript
```

echo "set tags=tags" >> ~/.vimrc
ignore tags in local git repository using

```sh
$ echo "tags" >> .git/info/exclude
```

## build neovim from source :O :O

### install build dependencies

https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites

```sh
brew install ninja libtool automake cmake pkg-config gettext
```

### clone the repository

```sh
git clone https://github.com/neovim/neovim.git
```

```sh
cd neovim
```

then build it into the OSX bins folder this builds the release version if you built previously remove`build`folder with

```sh
rm -rf build
```

then run

```sh
$make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=/usr/local install
```

run`:checkhealth` for more info ;)

# nodejs neovim plugins support ;)

`$ npm install -g neovim`
