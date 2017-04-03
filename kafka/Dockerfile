FROM java:openjdk-8-jre

ENV DEBIAN_FRONTEND noninteractive
ENV SCALA_VERSION 2.12
ENV KAFKA_VERSION 0.10.2.0

LABEL name="kafka" version="$SCALA_VERSION"-"$KAFKA_VERSION"

# Install Kafka
RUN apt-get update && \
    apt-get install -y wget && \
    apt-get clean && \
    wget -q -O - http://apache.fayea.com/kafka/"$KAFKA_VERSION"/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz | tar -xzf - -C /opt && \
    mv /opt/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION" /opt/kafka

ENV KAFKA_HOME /opt/kafka

ADD config/server.properties /opt/kafka/config/server.properties
ADD do.sh /opt/do.sh

EXPOSE 9092

ENTRYPOINT ["/opt/do.sh"]
