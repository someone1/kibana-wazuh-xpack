FROM docker.elastic.co/kibana/kibana:6.1.0

ENV WAZUH_VERSION 3.0.0
ENV KIBANA_VERSION 6.1.0

RUN /usr/share/kibana/bin/kibana-plugin install "https://packages.wazuh.com/wazuhapp/wazuhapp-${WAZUH_VERSION}_${KIBANA_VERSION}.zip"
