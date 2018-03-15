
for file in ~/.bash/{functions,exports,aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

if [ -e $HOME/.proxy_enable ]; then
    proxy_enable
fi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
)

source $ZSH/oh-my-zsh.sh

if [ -e $HOME/.local.bash_profile ]; then
    source $HOME/.local.bash_profile
fi
