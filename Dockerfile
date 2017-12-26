FROM docker.elastic.co/kibana/kibana:6.1.0

ENV WAZUH_VERSION 3.1.0
ENV KIBANA_VERSION 6.1.0

USER kibana

RUN NODE_OPTIONS=--max-old-space-size=2000 kibana-plugin install "https://packages.wazuh.com/wazuhapp/wazuhapp-${WAZUH_VERSION}_${KIBANA_VERSION}.zip"
