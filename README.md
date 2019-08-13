# requirements

## useful links

https://stsewd.dev/es/posts/neovim-plugins/
https://stsewd.dev/es/posts/neovim-installation-configuration/

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
