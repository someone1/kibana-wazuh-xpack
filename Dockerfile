FROM khezen/kibana

ADD ./src/ /run/
RUN chmod +x -R /run/

ENTRYPOINT ["/run/wazuh.sh"]
CMD ["kibana"]
