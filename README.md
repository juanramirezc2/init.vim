# requirements

##

## universal ctags needed by gutentags

install ctags and use it as default local bin OSX has its own ctags package and sucks
brew install ctags
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
Afterwards, you may need to set the alias to the new version by running:
alias ctags="`brew --prefix`/bin/ctags"
alias ctags >> ~/.zshrc
clone this .ctags file under ~/.ctags.d/default.ctags https://github.com/agorf/ctags-patterns-for-javascript
echo "set tags=tags" >> ~/.vimrc
ignore tags in local git repository using
\$ echo "tags" >> .git/info/exclude
