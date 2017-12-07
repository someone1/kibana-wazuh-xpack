#!/bin/bash

set -m

/run/miscellaneous/restore_config.sh
/run/miscellaneous/wait_for_elasticsearch.sh

/usr/share/kibana/bin/kibana-plugin install http://wazuh.com/resources/wazuh-app.zip

$@ &

fg
