#!/usr/bin/with-contenv bashio

export ELASTICSEARCH_HOSTS=$(bashio::config 'elasticsearch_hosts')
export ELASTICSEARCH_USERNAME=$(bashio::config 'elasticsearch_username')
export ELASTICSEARCH_PASSWORD=$(bashio::config 'elasticsearch_password')

set -x
ls -l /lib64/ld-linux-x86-64.so.2
filebeat -e -c /config/filebeat.yml --path.data /data
