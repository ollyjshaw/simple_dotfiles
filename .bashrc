#aliases
alias be='bundle exec'
alias sbt='sbt -mem 4444'
alias kill-docker='docker kill `docker ps --no-trunc -aq` ;  docker rm `docker ps --no-trunc -aq`'
alias ptw='ptw -p'
alias xargs='xargs '
alias k='kubectl'
alias kg='kubectl get'
alias kgpo='kubectl get pod'

export EDITOR=vim

# Add bash completions
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Setup bash-git-prompt
export GIT_PROMPT_IGNORE_STASH=1
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

#Allow history to be ginored with a space at the front
export HISTCONTROL=ignorespace
export HISTCONTROL=ignoreboth:erasedups

#weird compiler flags, worth a shot
#export LDFLAGS="${LDFLAGS} -L/usr/local/opt/openssl@1.1/lib -L/usr/local/opt/readline/lib -Wl,-dead_strip_dylibs"
#export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
#export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"
# For pkg-config to find zlib you may need to set:
#export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"

# Setup pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#Setup nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
