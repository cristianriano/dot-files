# Zplug configuration
export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh

# History
export SAVEHIST=200000
export HISTFILE=~/.zsh_history
setopt inc_append_history
setopt share_history
autoload colors && colors

# Zplug themes
zplug "themes/robbyrussell", from:oh-my-zsh, as:theme
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh"

# Zplug plugins
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/bundler", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/fasd", from:oh-my-zsh
zplug "plugins/gem", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/history-substring-search", from:oh-my-zsh
zplug "plugins/nanoc", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/node", from:oh-my-zsh
zplug "plugins/rails", from:oh-my-zsh
zplug "plugins/ruby", from:oh-my-zsh
zplug "rupa/z", use:z.sh
zplug "plugins/zeus", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install missing plugins
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
      echo; zplug install
  fi
fi

# Load the plugins in the terminal
zplug load # --verbose

# Rbenv configuration
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Nodenv configuration
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# Phantomenv configuration
export PATH="$HOME/.phantomenv/bin:$PATH"
eval "$(phantomenv init -)"

# Jenv configuration
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Substring search
zmodload zsh/terminfo
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

# Postgress app
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# JRuby
export JRUBY_OPTS="--dev -J-noverify"

# Java version
export JAVA_OPTIONS="-Xmx2048m"
export JAVA_OPTS="-Xmx2048m"

# Imagemagick
# export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
# export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"

# Personal paths
export PATH="/usr/local/sbin:$PATH"

# Configurations
export DISABLE_SPRING=true
export EDITOR=vim
