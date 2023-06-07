#!/usr/bin/with-contenv bashio

export ELASTICSEARCH_HOSTS=$(bashio::config 'elasticsearch_hosts')
export ELASTICSEARCH_USERNAME=$(bashio::config 'elasticsearch_username')
export ELASTICSEARCH_PASSWORD=$(bashio::config 'elasticsearch_password')

echo Checking journal folder
ls -l /var/log/journal
echo Starting Filebeat
filebeat -e -c /config/filebeat.yml --path.data /data
