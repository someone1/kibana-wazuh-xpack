FROM docker.elastic.co/kibana/kibana-oss:6.1.0

ENV WAZUH_VERSION 3.0.0
ENV KIBANA_VERSION 6.1.0

USER kibana

RUN kibana-plugin install "https://packages.wazuh.com/wazuhapp/wazuhapp-${WAZUH_VERSION}_${KIBANA_VERSION}.zip" && \
    kibana-plugin install x-pack && \
    echo 'xpack.monitoring.ui.container.elasticsearch.enabled: true' >> /usr/share/kibana/config/kibana.yml
