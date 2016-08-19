
PATH=/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin

test -f /etc/environment && . /etc/environment

exec </dev/null
exec >/dev/null
exec 2>/dev/null

svc -dx /service/* /service/*/log

env - PATH=$PATH svscan /service 2>&1 | \
env - PATH=$PATH readproctitle service errors: ................................................................................................................................................................................................................................................................................................................................................................................................................
