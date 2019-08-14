alias pipact='source `pipenv --venv`"/bin/activate"'
export PATH="$PATH:/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
source ~/.aliases.sh
source ~/.envs.sh
export JAVA_HOME=$(/usr/libexec/java_home)
export GIT_PROMPT_IGNORE_STASH=1
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

alias k='kubectl'
alias kg='kubectl get'
alias kgpo='kubectl get pod'

#Allow history to be ginored with a space at the front
export HISTCONTROL=ignorespace

export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
#export PATH=/usr/local/opt/python/libexec/bin:$PATH
#alias python=python3
#alias python=/Users/olivershaw/.pyenv/shims/python3
#alias pip=/Users/olivershaw/.pyenv/shims/pip3
#eval "$(pyenv init -)"
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export HISTCONTROL=ignoreboth:erasedups

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
