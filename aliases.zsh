if [ "$(uname)" == "Darwin" ] && command -v htop > /dev/null 2>&1; then
  alias htop='sudo htop'
fi

if command -v youtube-dl > /dev/null 2>&1; then
  alias youtube-dl="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o '%(title)s.%(ext)s'"
fi
# Automatically ls after you change directories (cd).
# Comment out this function if it's annoying.
function chpwd() {
	emulate -L zsh
	ls
}

alias clear="printf '\33c\e[3J'"
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias l='ls -lh'
alias ll='ls -Alh'
alias ls='ls -G'

alias ga='git add'
alias gb='git branch'
alias gbd='git branch -D'
alias gc='git commit'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gd='git diff'
alias gl='git pull'
alias glg='git log --stat'
alias gm='git merge'
alias gp='git push'
function gps() {
  git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)
}
alias grb='git rebase'
alias gst='git status'
alias gsts='git stash'
alias vim='mvim -v'

fi
