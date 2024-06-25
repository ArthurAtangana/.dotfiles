# Created by newuser for 5.9

# Theming
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/config.toml)"

# Aliases
source ~/.aliases

# Keybindings
bindkey -v # vim

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Shell integrations

eval "$(fzf --zsh)"

# Autocompletion
autoload -U compinit && compinit -u

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Plugins
if [ -d /usr/share/zsh/site-functions ]; then fpath+=/usr/share/zsh/site-functions fi
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
