# ~/.profile

# systemd
export SYSTEMD_PAGER=
export SYSTEMD_URLIFY=true
export SYSTEMD_COLORS=true

# SSH socket
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Charset
export LANG=en_US.UTF-8
export LC_ALL=$LANG
export LANGUAGE=$LANG
export LESSCHARSET=UTF-8

# EDITOR & VISUAL
# --
exists () { hash "$1" 2>/dev/null && echo "$1" || echo "$2" ; }

# Use neovim if installed, else fallback to nano --
export EDITOR=$(exists nvim nano)
export VISUAL=$EDITOR

# Unset function 'exists'
unset -f exists
# --

# GPG
export GPG_TTY=$(tty)

# GTK <-> KDE Portal
export GTK_USE_PORTAL=1

# Enable docker buildkit
export DOCKER_BUILDKIT=1 COMPOSE_DOCKER_CLI_BUILD=1

# Disable telemetry
export DO_NOT_TRACK=1
export NEXT_TELEMETRY_DEBUG=1
export NUXT_TELEMETRY_DISABLED=1
export GATSBY_TELEMETRY_OPT_OUT=1
export NG_CLI_ANALYTICS=false
export HINT_TELEMETRY="off"
