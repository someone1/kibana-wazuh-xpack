FROM khezen/kibana:6

ENV WAZUH_VERSION 3.0.0

RUN echo "xpack.monitoring.ui.container.elasticsearch.enabled: true" >> /.backup/kibana/config/kibana.yml

RUN /run/miscellaneous/restore_config.sh && \
    /opt/kibana-${KIBANA_VERSION}-linux-x86_64/bin/kibana-plugin install x-pack && \
    /opt/kibana-${KIBANA_VERSION}-linux-x86_64/bin/kibana-plugin install "https://packages.wazuh.com/wazuhapp/wazuhapp-${WAZUH_VERSION}_${KIBANA_VERSION}.zip" && \
    rm "/opt/kibana-$KIBANA_VERSION-linux-x86_64/config/kibana.yml"
