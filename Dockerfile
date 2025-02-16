FROM python:3.10-slim-buster

RUN up_zookeeper.sh
RUN up_kafka.sh
RUN up_topic.sh
