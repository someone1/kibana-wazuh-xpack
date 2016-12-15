#!/bin/bash

/run/entrypoint.sh $1
/usr/share/kibana/bin/kibana-plugin install http://wazuh.com/resources/wazuh-app.zip
