slim_path=`dirname $0`
fpath=( $slim_path $fpath )

autoload -U promptinit && promptinit
prompt pure

autoload -U compinit
compinit

setopt autocd
setopt extendedglob
setopt NO_NOMATCH

export CLICOLOR=1

source $slim_path/keys.zsh
source $slim_path/history.zsh
source $slim_path/completion.zsh
source $slim_path/aliases.zsh
#source $slim_path/correction.zsh
source $slim_path/stack.zsh
source $slim_path/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
# # source $slim_path/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
# ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=green
# ZSH_HIGHLIGHT_STYLES[precommand]=fg=green
# ZSH_HIGHLIGHT_STYLES[path]=none

source $slim_path/colored-man-pages.zsh

if command -v fzf > /dev/null 2>&1; then
  # Setup fzf
  # if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
    # export PATH="$PATH:/usr/local/opt/fzf/bin"
    export PATH="$PATH:/opt/homebrew/opt/fzf/bin"
  fi

  # Auto-completion
  # [[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null
  [[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.zsh" 2> /dev/null

  # Key bindings
  # source "/usr/local/opt/fzf/shell/key-bindings.zsh"
  source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"
  if command -v rg > /dev/null 2>&1; then
    export FZF_DEFAULT_COMMAND="rg --files --hidden -g '!.git/*' 2> /dev/null"
  fi
fi
