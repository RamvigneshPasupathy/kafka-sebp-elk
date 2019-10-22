FROM sebp/elk

ENV LOGSTASH_HOME /opt/logstash

WORKDIR ${LOGSTASH_HOME}

RUN gosu logstash bin/logstash-plugin install logstash-input-kafka
