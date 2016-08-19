
PATH=/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin

test -z "$SVSCANBOOT" && exec env - PATH="$PATH" SVSCANBOOT="$0" "$0" "$@"
unset SVSCANBOOT

set -a
test -f /etc/environment && . /etc/environment
set +a

exec </dev/null
exec >/dev/null
exec 2>/dev/null

svc -dx /service/* /service/*/log

svscan /service 2>&1 | \
readproctitle service errors: ................................................................................................................................................................................................................................................................................................................................................................................................................
