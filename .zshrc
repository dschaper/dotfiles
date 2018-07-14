### Enable GnuPG SSH Authentication
gpg-connect-agent /bye
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

### Source configuration snippets
for configfile in $XDG_CONFIG_HOME/zsh/config/*
do
  source "$configfile"
done
# vim:ft=zsh ts=2 sw=2 sts=2 et fenc=utf-8
