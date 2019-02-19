# Supported tags and respective `Dockerfile` links
* `latest` [(Dockerfile)](https://github.com/topaztechnology/elk/blob/master/Dockerfile) - the latest release
* `660` [(Dockerfile)](https://github.com/topaztechnology/elk/blob/660/Dockerfile) - release based on sebp/elk:660 image

# Overview

An ELK image built on the `sebp/elk` [image](https://hub.docker.com/r/sebp/elk/) with support
for the original UDP Logstash rather than the new Beats interface. It listens on port 5140 rather than
the priviledged port 514.

# How to use this image

Elasticsearch will not start unless `vm.max_map_count` is set correctly.
This needs to be done on the host before starting the container as follows:

`sudo sysctl -w vm.max_map_count=262144`

Then start the container:

`docker run --name elk -p 5601:5601 -p 5140:5140/udp -v elk-data:/var/lib/elasticsearch -d topaztechnology/elk:latest`

# Environment variables

See the `sepb/elk` image documentation [here](https://elk-docker.readthedocs.io/) for
additional information on environment variables.
