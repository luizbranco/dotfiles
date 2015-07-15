# Ruby Version Manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Node Version Manager
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"

# GO path
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Set additional configs for git
source /usr/share/git/completion/git-completion.bash
source /usr/share/git/completion/git-prompt.sh

for file in ~/.{extra,bash_prompt,exports,bash_aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file