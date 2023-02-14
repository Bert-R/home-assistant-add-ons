#!/usr/bin/with-contenv bashio

export ELASTICSEARCH_HOSTS=$(bashio::config 'elasticsearch_hosts')
export ELASTICSEARCH_USERNAME=$(bashio::config 'elasticsearch_username')
export ELASTICSEARCH_PASSWORD=$(bashio::config 'elasticsearch_password')

set -x
echo "Source URL: "
cat src_url
which filebeat
echo $PATH
filebeat -e -c /config/filebeat.yml --path.data /data
