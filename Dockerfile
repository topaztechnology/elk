FROM sebp/elk:660

COPY 30-output.conf /etc/logstash/conf.d/
COPY 50-udp.conf /etc/logstash/conf.d/

EXPOSE 5140/udp
