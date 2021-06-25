#!/bin/sh

set -e

echo "${NEXTCLOUD_WEBDAV_URL} ${NEXTCLOUD_USERNAME} ${NEXTCLOUD_PASSWORD}" > /etc/davfs2/secrets

chmod 600 /etc/davfs2/secrets
chown root:root /etc/davfs2/secrets

mkdir -p /nextcloud
mount -v -t davfs -o ro "${NEXTCLOUD_WEBDAV_URL}" /nextcloud

rsync -av /nextcloud/"${NEXTCLOUD_PHOTOS_PATH}"/ /photos/
