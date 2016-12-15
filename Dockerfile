FROM khezen/kibana

COPY /.backup/kibana/kibana.yml /etc/kibana/kibana.yml
RUN /usr/share/kibana/bin/kibana-plugin install http://wazuh.com/resources/wazuh-app.zip

COPY config/kibana.yml /.backup/kibana/kibana.yml
RUN rm -f /etc/kibana/kibana.yml
