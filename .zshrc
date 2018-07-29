### Enable GnuPG SSH Authentication
# Start the gpg-agent if not already running
if ! pgrep -x -u "${USER}" gpg-agent >/dev/null 2>&1; then
	gpg-connect-agent /bye >/dev/null 2>&1
fi
gpg-connect-agent updatestartuptty /bye >/dev/null
# use a tty for gpg
# solves error: "gpg: signing failed: Inappropriate ioctl for device"
GPG_TTY=$(tty)
export GPG_TTY
# Set SSH to use gpg-agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ] && [ ! -n "${SSH_CONNECTION}" ]; then
		SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
		export SSH_AUTH_SOCK
fi

### Source configuration snippets
for configfile in $XDG_CONFIG_HOME/zsh/config/*
do
  source "$configfile"
done

### Completions
fpath=($XDG_CONFIG_HOME/zsh/completions $fpath)
autoload -U compinit
compinit
# vim:ft=zsh ts=2 sw=2 sts=2 et fenc=utf-8
