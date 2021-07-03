#!/bin/sh

set -e

[ -n "${WEBDAV_URL}" ] || exit 0

echo "${WEBDAV_URL} ${WEBDAV_USERNAME} ${WEBDAV_PASSWORD}" > /etc/davfs2/secrets

chmod -v 600 /etc/davfs2/secrets
chown -v root:root /etc/davfs2/secrets

rm -v /var/run/mount.davfs/*.pid 2>/dev/null || true
mount -v -t davfs -o ro "${WEBDAV_URL}" /mnt || exit 1

trap "umount -v /mnt" TERM INT QUIT EXIT

while true
do
    rsync -av /mnt/ /photos/
    sleep 1h
done
