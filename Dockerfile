version: "3"
services:
  kafka-sebp-elk:
    image: "ramvignesh/kafka-sebp-elk:latest"
    build:
        context: "./"
        dockerfile: "Dockerfile"
    ports:
      - "5601:5601" # kibana
      - "9200:9200" # elasticsearch
      - "5044:5044" # logstash
    volumes:
      - "./logstash-kafka.conf:/etc/logstash/conf.d/01-kafka.conf"
