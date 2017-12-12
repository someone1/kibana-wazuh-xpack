#!/bin/bash

set -m

/run/miscellaneous/restore_config.sh
/run/miscellaneous/wait_for_elasticsearch.sh

/opt/kibana-${KIBANA_VERSION}-linux-x86_64/bin/kibana-plugin remove wazuh || true
/opt/kibana-${KIBANA_VERSION}-linux-x86_64/bin/kibana-plugin install "https://packages.wazuh.com/wazuhapp/wazuhapp-${WAZUH_VERSION}_${KIBANA_VERSION}.zip"

$@ &

fg
