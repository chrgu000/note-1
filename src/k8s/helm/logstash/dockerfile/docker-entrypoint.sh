#!/bin/bash

set -e


declare -a es_opts

while IFS='=' read -r envvar_key envvar_value
do
    # Elasticsearch settings need to have at least two dot separated lowercase
    # words, e.g. `cluster.name`, except for `processors` which we handle
    # specially   -Dproperty=value
    if [[ "$envvar_key" =~ ^[a-z0-9_]+\.[a-z0-9_]+ || "$envvar_key" == "processors" ]]; then
        if [[ ! -z $envvar_value ]]; then
          es_opt="-D${envvar_key}=${envvar_value}"
          es_opts+=("${es_opt}")
        fi
    fi
done < <(env)

# Add elasticsearch as command if needed
# Drop root privileges if we are running elasticsearch
# allow the container to be started with `--user`
# if [ "$1" = 'elasticsearch' -a "$(id -u)" = '0' ]; then
#         # Change the ownership of /usr/share/elasticsearch/data to elasticsearch
#         chown -R elasticsearch:elasticsearch /usr/share/elasticsearch/data

#         set -- gosu elasticsearch "${es_opts[@]}"
#         #exec gosu elasticsearch "$BASH_SOURCE" "$@"
# fi

# As argument is not related to elasticsearch,
# then assume that user wants to run his own process,
# for example a `bash` shell to explore this image
elasticsearch -Des.insecure.allow.root=true "${es_opts[@]}"