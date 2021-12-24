# Home Assistant Add-on: Filebeat

This add-on sends the Home Assistant journal logs to an Elasticsearch server using Filebeat. Running it needs knowledge about Filebeat and Elasticsearch, particularly to initialize Elasticsearch for Filebeat.

## How to use

The Filebeat configuration is read from the file ``filebeat.yml`` in the ``/config`` folder. An example configuration is available [here on GitHub](https://github.com/Bert-R/home-assistant-add-ons/filebeat/example-config). The example setup uses two configuration files, thus allowing automatic reload of changes in the Journal input configuration.

The configuration screen allows setting the hosts, username and password. These are made available as environment variables (``ELASTICSEARCH_HOSTS``, ``ELASTICSEARCH_USERNAME`` and ``ELASTICSEARCH_PASSWORD``).
