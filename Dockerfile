FROM khezen/kibana:6

ENV WAZUH_VERSION 3.0.0

ADD ./src/ /run/
RUN chmod +x -R /run/

ENTRYPOINT ["/run/wazuh.sh"]
CMD ["kibana"]
